package Dao;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
	
	public static void sendMail(String email, String subject, String content, String fromEmail,String fromPassword) {

		java.util.Properties properties = new java.util.Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

		try {
			MimeMessage message = new MimeMessage(mailSession);

			message.setContent(content, "text/html");
			message.setSubject(subject);

			InternetAddress sender = new InternetAddress(fromEmail, "TaleSpin");
			InternetAddress receiver = new InternetAddress(email);
			message.setFrom(sender);
			message.setRecipient(Message.RecipientType.TO, receiver);
			message.saveChanges();

			javax.mail.Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", 587, fromEmail, fromPassword);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
