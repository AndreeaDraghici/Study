import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTextField;
import javax.swing.JLabel;


/*
 * Author: Andreea
 * 31.07.2021
 */
@SuppressWarnings("unused")
public class Frame1 {

	private JFrame frame;
	private JTextField textField;
	private JLabel lblMessage;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Frame1 window = new Frame1();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public Frame1() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		JButton btnNewButton = new JButton("Show Message");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//JOptionPane.showMessageDialog(null, "Hello World!");
				textField.setText("Hello World!");
			}
		});
		btnNewButton.setForeground(new Color(255, 204, 0));
		btnNewButton.setBackground(new Color(51, 204, 204));
		btnNewButton.setFont(new Font("Times New Roman", Font.BOLD, 12));
		btnNewButton.setBounds(159, 152, 160, 37);
		frame.getContentPane().add(btnNewButton);
		
		textField = new JTextField();
		textField.setBounds(143, 78, 75, 31);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		
		lblMessage = new JLabel("Message");
		lblMessage.setBounds(77, 44, 224, 98);
		frame.getContentPane().add(lblMessage);
	}
}
