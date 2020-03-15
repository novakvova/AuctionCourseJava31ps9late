package car.show.room.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

//@Service("JavaMailSenderService")
public class JavaMailSenderService {

	@Autowired
	private MailSender mailSender; // MailSender interface defines a strategy
									// for sending simple mails

	public void sendEmail(String toAddress, String fromAddress, String subject, String msgBody) {

		SimpleMailMessage mailmsg = new SimpleMailMessage();
		mailmsg.setFrom(fromAddress);
		mailmsg.setTo(toAddress);
		mailmsg.setSubject(subject);
		mailmsg.setText(msgBody);
		mailSender.send(mailmsg);
	}
}
