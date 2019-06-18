import state from './state'
export default {
	setStudent({},details) {
		state.studentDetails.firstname = details.s_fname
		state.studentDetails.middlename = details.s_mname
		state.studentDetails.lastname = details.s_surname
		state.studentDetails.email = details.s_email
		state.studentDetails.s_gender = details.s_gender
		state.studentDetails.contact = details.s_contact
		state.studentDetails.date = details.s_dob
		state.studentDetails.religion = details.s_religion
		state.studentDetails.nationality = details.s_nationality
		state.studentDetails.street = details.s_address
		state.studentDetails.pincode = details.s_address_pin
		state.studentDetails.s_state = details.s_address_state
		state.studentDetails.gfirstname = details.guardian_fname
		state.studentDetails.gmiddlename = details.guardian_mname
		state.studentDetails.glastname = details.guardian_surname
		state.studentDetails.gemail = details.guardian_email
		state.studentDetails.gcontact = details.guardian_contact
		state.studentDetails.gstreet = details.guardian_address
		state.studentDetails.gpincode = details.guardian_pin
		state.studentDetails.g_state = details.guardian_state
	}
}
