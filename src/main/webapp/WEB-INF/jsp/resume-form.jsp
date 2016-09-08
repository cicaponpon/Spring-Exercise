
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Resume Builder</title>
</head>
<body>
	<form:form commandName="resume" modelAttribute="resume" action="/resume" method="POST">
		<fieldset>
		<h2>Personal Information</h2>
		Name <form:input path="name"/> <br/>
		Position <form:input path="position"/> <br/>
		Birth Date <form:input path="birth"/> <br/>
		Nationality <form:input path="nationality"/> <br/>
		Address <form:textarea path="address"/> <br/>
		Phone <form:input path="phone"/> <br/>
		Email <form:input path="email"/> <br/>
		Web <form:input path="web"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName1"/> <br/>
		Header Font Size <form:input path="hFontSize1"/> <br/>
		Section Font Name <form:input path="sFontName1"/> <br/>
		Section Font Size <form:input path="sFontSize1"/> <br/>
		Section Background Color <form:input path="sBackColor1"/> <br/>
		</fieldset>
		
		<fieldset>
		<h2>Your Statement</h2>
		Position <form:textarea path="myStatement"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName2"/> <br/>
		Header Font Size <form:input path="hFontSize2"/> <br/>
		Section Font Name <form:input path="sFontName2"/> <br/>
		Section Font Size <form:input path="sFontSize2"/> <br/>
		Section Background Color <form:input path="sBackColor2"/> <br/>
		</fieldset>
		
		<fieldset>
		<h2>Your Experience</h2>
		<h5>#1</h5>
		Position <form:input path="expPosition1"/> <br/>
		Year <form:input path="expYear1"/> <br/>
		Description <form:textarea path="expDescription1"/> <br/>
		<h5>#2</h5>
		Position <form:input path="expPosition2"/> <br/>
		Year <form:input path="expYear2"/> <br/>
		Description <form:textarea path="expDescription2"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName3"/> <br/>
		Header Font Size <form:input path="hFontSize3"/> <br/>
		Section Font Name <form:input path="sFontName3"/> <br/>
		Section Font Size <form:input path="sFontSize3"/> <br/>
		Section Background Color <form:input path="sBackColor3"/> <br/>
		</fieldset>
		
		<fieldset>
		<h2>Education</h2>
		<h5>#1</h5>
		Education <form:input path="educEducation1"/> <br/>
		Year <form:input path="educYear1"/> <br/>
		Description <form:textarea path="educDescription1"/> <br/>
		<h5>#2</h5>
		Education <form:input path="educEducation2"/> <br/>
		Year <form:input path="educYear2"/> <br/>
		Description <form:textarea path="educDescription2"/> <br/>
		
		<h2>Interest</h2>
		<form:textarea path="interest"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName4"/> <br/>
		Header Font Size <form:input path="hFontSize4"/> <br/>
		Section Font Name <form:input path="sFontName4"/> <br/>
		Section Font Size <form:input path="sFontSize4"/> <br/>
		Section Background Color <form:input path="sBackColor4"/> <br/>
		</fieldset>
		
		<fieldset>
		<h2>Professional Skills</h2>
		#1 <form:textarea path="profSkill1"/> <br/>
		#2 <form:textarea path="profSkill2"/> <br/>
		#3 <form:textarea path="profSkill3"/> <br/>
		#4 <form:textarea path="profSkill4"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName5"/> <br/>
		Header Font Size <form:input path="hFontSize5"/> <br/>
		Section Font Name <form:input path="sFontName5"/> <br/>
		Section Font Size <form:input path="sFontSize5"/> <br/>
		Section Background Color <form:input path="sBackColor5"/> <br/>
		</fieldset>
		
		<fieldset>
		<h2>Your References</h2>
		<h5>#1</h5>
		Name <form:input path="referName1"/> <br/>
		Position <form:input path="referPosition1"/> <br/>
		Telephone <form:textarea path="referTelephone1"/> <br/>
		<h5>#2</h5>
		Name <form:input path="referName2"/> <br/>
		Position <form:input path="referPosition2"/> <br/>
		Telephone <form:textarea path="referTelephone2"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName6"/> <br/>
		Header Font Size <form:input path="hFontSize6"/> <br/>
		Section Font Name <form:input path="sFontName6"/> <br/>
		Section Font Size <form:input path="sFontSize6"/> <br/>
		Section Background Color <form:input path="sBackColor6"/> <br/>
		</fieldset>
		
		<fieldset>
		<h2>Personal Skills</h2>
		#1 <form:textarea path="skill1"/> <br/>
		#2 <form:textarea path="skill2"/> <br/>
		#3 <form:textarea path="skill3"/> <br/>
		#4 <form:textarea path="skill4"/> <br/>
		
		<h2>Design</h2>
		Header Font Name <form:input path="hFontName7"/> <br/>
		Header Font Size <form:input path="hFontSize7"/> <br/>
		Section Font Name <form:input path="sFontName7"/> <br/>
		Section Font Size <form:input path="sFontSize7"/> <br/>
		Section Background Color <form:input path="sBackColor7"/> <br/>
		</fieldset>
		
		
		<input type="submit" value="SUBMIT"/>
	</form:form>
</body>
</html>