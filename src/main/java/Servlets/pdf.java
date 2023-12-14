package Servlets;

import java.io.IOException;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.font.PDType1Font;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pdf
 */
@WebServlet("/print")
public class pdf extends HttpServlet {
	private static final long serialVersionUID = 1L;

   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

   		response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline; filename=table.pdf");

        try (PDDocument document = new PDDocument()) {
            PDPage page = new PDPage(PDRectangle.A4);
            document.addPage(page);

            try (PDPageContentStream contentStream = new PDPageContentStream(document, page)) {
                contentStream.setFont(PDType1Font.HELVETICA_BOLD, 12);

                float margin = 50;
                float yStart = page.getMediaBox().getHeight() - margin;
                float tableWidth = page.getMediaBox().getWidth() - 2 * margin;
                float yPosition = yStart;
                int rows = 2; // Change this to match the number of rows in your table
                float tableHeight = 20f * rows;
                float rowHeight = 20f;
                float tableYBottom = yStart - tableHeight;

                contentStream.beginText();
                contentStream.newLineAtOffset(margin, yStart);
                contentStream.showText("Name");
                contentStream.newLineAtOffset(150, 0);
                contentStream.showText("Age");
                contentStream.newLineAtOffset(100, 0);
                contentStream.showText("City");
                contentStream.endText();
                contentStream.drawLine(margin, yStart - 20, margin + tableWidth, yStart - 20);

                // Add table data here, looping through your data source
                for (int i = 0; i < rows; i++) {
                    yPosition -= rowHeight;
                    contentStream.drawLine(margin, yPosition, margin + tableWidth, yPosition);
                    contentStream.setFont(PDType1Font.HELVETICA, 12);
                    contentStream.beginText();
                    contentStream.newLineAtOffset(margin + 2, yPosition + 3);
                    contentStream.showText("id"); // Replace with your data
                    contentStream.newLineAtOffset(150, 0);
                    contentStream.showText("service"); // Replace with your data
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("dop");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("warranty");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("bs");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("name");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("email");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("number");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("address");
                    contentStream.newLineAtOffset(100, 0);
                    contentStream.showText("invoice");
                    contentStream.endText();
                }

                contentStream.drawLine(margin, tableYBottom, margin + tableWidth, tableYBottom);
                contentStream.close();

                document.save(response.getOutputStream());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

}
