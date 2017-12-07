<form style="margin-left: 3%;"
	action="#" method="post">

	<div class="form-group">
	<label><strong><s:message code="connect_with" text="Connect With"></s:message></strong></label>
		<select class="form-control" id="sel1" name="state"
			style="width: 100%;">
			<option selected="selected" value="<---Searching For---"><---Search 
				for--->
			<option value="Farmer">
				<s:message code="farmer" text="Farmer"></s:message>
			<option value="Manufacturer"><s:message
					code="Manufacturer_Distributors" text="ManuFacturer/Distributors"></s:message>
			<option value="Retailers">
				<s:message code="Retailer" text="Retailer"></s:message>
					<option value="Storage">
				<s:message code="Storage" text="Storage"></s:message>
			<option value=""><s:message code="Others" text="Others"></s:message>
		</select>
	
		<label><strong><s:message code="State" text="State"></s:message></strong></label>
		<select class="form-control" id="sel1" name="state"
			style="width:100%;">
			<option selected="selected" value="<---Select State---"><---Select
				State--->
			<option value="ANDHRA PRADESH">
				<s:message code="ANDHRA PRADESH" text="ANDHRA PRADESH"></s:message>
			<option value="ARUNACHAL PRADESH"><s:message
					code="ARUNACHAL PRADESH" text="ARUNACHAL PRADESH"></s:message>
			<option value="ASSAM">
				<s:message code="ASSAM" text="ASSAM"></s:message>
			<option value="BIHAR"><s:message code="BIHAR" text="BIHAR"></s:message>
			<option value="CENTRAL USER"><s:message code="CENTRAL USER"
					text="CENTRAL USER"></s:message>
			<option value="CHHATTISGARH"><s:message code="CHHATTISGARH"
					text="CHHATTISGARH"></s:message>
			<option value="GOA"><s:message code="GOA" text="GOA"></s:message>
			<option value="GUJARAT"><s:message code="GUJARAT"
					text="GUJARAT"></s:message>
			<option value="HARYANA"><s:message code="HARYANA"
					text="HARYANA"></s:message>
			<option value="HIMACHAL PRADESH"><s:message
					code="HIMACHAL PRADESH" text="HIMACHAL PRADESH"></s:message>
			<option value="JAMMU AND KASHMIR"><s:message
					code="JAMMU AND KASHMIR" text="JAMMU AND KASHMIR"></s:message>
			<option value="JHARKHAND"><s:message code="JHARKHAND"
					text="JHARKHAND"></s:message>
			<option value="KARNATAKA"><s:message code="KARNATAKA"
					text="KARNATAKA"></s:message>
			<option value="KERALA"><s:message code="KERALA"
					text="KERALA"></s:message>
			<option value="MADHYA PRADESH"><s:message
					code="MADHYA PRADESH" text="MADHYA PRADESH"></s:message>
			<option value="MAHARASHTRA"><s:message code="MAHARASHTRA"
					text="MAHARASHTRA"></s:message>
			<option value="MANIPUR"><s:message code="MANIPUR"
					text="MANIPUR"></s:message>
			<option value="MEGHALAYA"><s:message code="MEGHALAYA"
					text="MEGHALAYA"></s:message>
			<option value="MIZORAM"><s:message code="MIZORAM"
					text="MIZORAM"></s:message>
			<option value="NAGALAND"><s:message code="NAGALAND"
					text="NAGALAND"></s:message>
			<option value="NEW DELHI (Central Level )"><s:message
					code="NEW DELHI (Central Level )" text="NEW DELHI (Central Level )"></s:message>
			<option value="ODISHA"><s:message code="ODISHA"
					text="ODISHA"></s:message>
			<option value="PUNJAB"><s:message code="PUNJAB"
					text="PUNJAB"></s:message>
			<option value="RAJASTHAN"><s:message code="RAJASTHAN"
					text="RAJASTHAN"></s:message>
			<option value="SIKKIM"><s:message code="SIKKIM"
					text="SIKKIM"></s:message>
			<option value="TAMILNADU"><s:message code="TAMILNADU"
					text="TAMILNADU"></s:message>
			<option value="TELANGANA"><s:message code="TELANGANA"
					text="TELANGANA"></s:message>
			<option value="TRIPURA"><s:message code="TRIPURA"
					text="TRIPURA"></s:message>
			<option value="UTTAR PRADESH"><s:message
					code="UTTAR PRADESH" text="UTTAR PRADESH"></s:message>
			<option value="UTTARAKHAND"><s:message code="UTTARAKHAND"
					text="UTTARAKHAND"></s:message>
			<option value="WEST BENGAL"><s:message code="WEST BENGAL"
					text="WEST BENGAL"></s:message>
		</select>
	</div>
	<div class="form-group">
		<label><s:message code="Pin_code" text="Pin_code"></s:message></label>
		<input style="width: 100%;" type="text" placeholder="Pincode(Optional)"
			class="form-control" name="pincode">
	</div>
	<div class="form-group">
		<label><s:message code="For_crop" text="For_crop"></s:message></label>
		<input style="width: 100%;" type="text"
			placeholder="Enter crop name  Here.." name="crop"
			class="form-control">
	</div>
	<input type="submit" value="Search" id="search" />

</form>