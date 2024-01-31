<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="Functions" exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html"/>

    <xsl:param name="propertiesFile"
        select="'file:///C:/ZoeStuff/MCC/github/mcc_tools_tech/Week02-ProgressiveInfo/Homework/login.properties'"/>

    <xsl:variable name="properties" select="unparsed-text($propertiesFile)" as="xs:string"/>

    <!-- From https://stackoverflow.com/questions/4326138/how-to-read-a-properties-file-inside-a-xsl-file -->
    <xsl:function name="f:getProperty" as="xs:string?">
        <xsl:param name="key" as="xs:string"/>
        <xsl:variable name="lines" as="xs:string*" select="
                for $x in
                for $i in tokenize($properties, '\n')[matches(., '^[^!#]')]
                return
                    tokenize($i, '=')
                return
                    translate(normalize-space($x), '\', '')"/>
        <xsl:sequence select="$lines[index-of($lines, $key) + 1]"/>
    </xsl:function>

    <xsl:template match="/">
        <xsl:element name="html">
            <xsl:element name="head">
                <xsl:element name="title">
                    <xsl:value-of select="f:getProperty('LoginPage')"/>
                </xsl:element>
                <xsl:element name="style">div.container { display: block; margin: auto;
                    font-family: Century Gothic; width: 850pt; height: 300pt; border: solid medium
                    black; background-color: #e6e6ff; } div.logo { display: block; width: 199pt;
                    float: left;} p { display: block; height: 160pt; background-image:
                    radial-gradient(#9966ff,#660066); color: white; margin: 18pt; padding: 6pt;
                    font-size: 14pt; font-weight: bold; text-align: center; padding-top: 100pt; }
                    div.login_form { display: block; float: left; width: 399pt; } div.helpbar {
                    display: block; width: 240pt; float: right; } p.help { display: none;
                    background-color: #e6e6ff; color: black; background-image: none; font-weight:
                    normal; text-align: left; border: solid thin black; margin-top: 100px; height:
                    233px; padding-top: 12pt; padding-left: 12pt; padding-right: 12pt; } h1 {
                    font-size: 24pt; font-weight: bold; } fieldset { margin: 18pt; } legend {
                    font-size: 18pt; } label { font-weight: bold; font-size: 16pt; margin-bottom:
                    6pt; margin-right: 12pt;} input { font-size: 16pt; margin-bottom: 6pt; } img { display: inline;
                    margin-left: 12pt; } a { color: blue; font-size: 14pt; } a:hover
                    {text-decoration: blue underline} img.hlpbtn:hover { border: medium groove
                    silver; } div.tada { display: none; background-color: #ffccff; border: thin
                    solid red; margin: 36pt;} p.tada { background-color: #ffccff; color: red;
                    font-size: 72pt; font-family: Century Gothic; background-image: none;} div.oops
                    { font-size: 12pt; font-family: Century Gothic; color: gray; padding:
                    18pt;} .hlpclose {display: inline-block; float: right;}</xsl:element>

            </xsl:element>
            <xsl:element name="body">
                <xsl:element name="div">
                    <xsl:attribute name="class">container</xsl:attribute>
                    <xsl:element name="div">
                        <xsl:choose>
                            <xsl:when test="f:getProperty('Graphic')">
                                <xsl:choose>
                                    <xsl:when test="f:getProperty('Graphic') = 'none'">
                                        <xsl:attribute name="class">logo</xsl:attribute>
                                        <xsl:element name="p">Cool Graphic Here</xsl:element>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:element name="img">
                                            <xsl:attribute name="class">imglogo</xsl:attribute>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="f:getProperty('Graphic')"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="f:getProperty('GraphicAlt')"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="f:getProperty('GraphicAlt')"/>
                                            </xsl:attribute>
                                        </xsl:element>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="class">logo</xsl:attribute>
                                <xsl:element name="p">Cool Graphic Here</xsl:element>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:element>
                    <xsl:element name="div">
                        <xsl:attribute name="class">login_form</xsl:attribute>
                        <xsl:element name="h1">
                            <xsl:value-of select="f:getProperty('LoginPage')"/>
                        </xsl:element>
                        <xsl:element name="form">
                            <xsl:attribute name="onsubmit">doThing(); return false;</xsl:attribute>
                            <xsl:element name="fieldset">
                                <xsl:element name="legend">
                                    <xsl:value-of select="f:getProperty('legend')"/>
                                </xsl:element>
                                <xsl:element name="label">
                                    <xsl:attribute name="for">
                                        <xsl:text>username</xsl:text>
                                    </xsl:attribute>
                                    <xsl:value-of select="f:getProperty('Username')"/>
                                </xsl:element>
                                <xsl:element name="input">
                                    <xsl:attribute name="id">username</xsl:attribute>
                                    <xsl:attribute name="type">text</xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="f:getProperty('UserName_Tip')"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <xsl:element name="img">
                                    <xsl:attribute name="class">hlpbtn</xsl:attribute>
                                    <xsl:attribute name="src">help.png</xsl:attribute>
                                    <xsl:attribute name="onclick">openHlp('usr');</xsl:attribute>
                                    <xsl:attribute name="alt">help</xsl:attribute>
                                    <xsl:attribute name="title">Click here for help</xsl:attribute>
                                </xsl:element>
                                <xsl:element name="br"/>
                                <xsl:element name="label">
                                    <xsl:attribute name="for">
                                        <xsl:text>password</xsl:text>
                                    </xsl:attribute>
                                    <xsl:value-of select="f:getProperty('Passwrd')"/>
                                </xsl:element>
                                <xsl:element name="input">
                                    <xsl:attribute name="id">password</xsl:attribute>
                                    <xsl:attribute name="type">text</xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="f:getProperty('Password_Tip')"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <xsl:element name="img">
                                    <xsl:attribute name="class">hlpbtn</xsl:attribute>
                                    <xsl:attribute name="src">help.png</xsl:attribute>
                                    <xsl:attribute name="onclick">openHlp('pswd');</xsl:attribute>
                                    <xsl:attribute name="alt">help</xsl:attribute>
                                    <xsl:attribute name="title">Click here for help</xsl:attribute>
                                </xsl:element>
                                <xsl:element name="br"/>
                                <xsl:element name="input">
                                    <xsl:attribute name="type">submit</xsl:attribute>
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="f:getProperty('Submit_btn')"/>
                                    </xsl:attribute>
                                </xsl:element>
                                <xsl:element name="br"/>
                                <xsl:element name="a">
                                    <xsl:attribute name="onclick">alert('This does nothing');</xsl:attribute>
                                    <xsl:value-of select="f:getProperty('FixPassword')"/>
                                </xsl:element>
                                <!--<xsl:element name="div">
                                    <xsl:attribute name="class">oops</xsl:attribute>
                                    <xsl:text>You may have to click buttons twice because I'm not a real developer.</xsl:text>
                                </xsl:element>-->
                            </xsl:element>
                        </xsl:element>
                    </xsl:element>
                    <xsl:element name="div">
                        <xsl:attribute name="id">help</xsl:attribute>
                        <xsl:attribute name="class">helpbar</xsl:attribute>
                        <xsl:element name="p">
                            <xsl:attribute name="id">usr</xsl:attribute>
                            <xsl:attribute name="class">help</xsl:attribute>
                            <xsl:element name="input">
                                <xsl:attribute name="type">button</xsl:attribute>
                                <xsl:attribute name="onclick">document.getElementById('usr').style.display = 'none';</xsl:attribute>
                                <xsl:attribute name="value">X</xsl:attribute>
                                <xsl:attribute name="class">hlpclose</xsl:attribute>
                            </xsl:element>
                            <xsl:value-of select="f:getProperty('UserName_Help')"/>
                        </xsl:element>
                        <xsl:element name="p">
                            <xsl:attribute name="id">pswd</xsl:attribute>
                            <xsl:attribute name="class">help</xsl:attribute>
                            <xsl:element name="input">
                                <xsl:attribute name="type">button</xsl:attribute>
                                <xsl:attribute name="onclick">document.getElementById('pswd').style.display = 'none';</xsl:attribute>
                                <xsl:attribute name="value">X</xsl:attribute>
                                <xsl:attribute name="class">hlpclose</xsl:attribute>
                            </xsl:element>
                            <xsl:value-of select="f:getProperty('Password_Help')"/>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
                <xsl:element name="div">
                    <xsl:attribute name="id">thing</xsl:attribute>
                    <xsl:attribute name="class">tada</xsl:attribute>
                    <xsl:element name="p">
                        <xsl:attribute name="class">tada</xsl:attribute> Do the thing!</xsl:element>
                    </xsl:element>
                    <xsl:element name="input">
                        <xsl:attribute name="type">button</xsl:attribute>
                        <xsl:attribute name="onclick">document.getElementById('thing').style.display = 'none';</xsl:attribute>
                        <xsl:attribute name="value">Close</xsl:attribute>
                        <xsl:attribute name="style">margin-left: 600px;</xsl:attribute>
                    </xsl:element>
                <xsl:element name="script">function openHlp(hlpid) { 
                    if (hlpid == 'usr') {
                    document.getElementById('usr').style.display = "block";
                    document.getElementById('pswd').style.display = "none";
                    } else if (hlpid == 'pswd') {
                    document.getElementById('usr').style.display = "none";
                    document.getElementById('pswd').style.display = "block";
                    } else {
                    alert('Debug: Invalid help ID');
                    }
                    }
                    function doThing() {
                    document.getElementById('thing').style.display = "block";
                    }</xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
