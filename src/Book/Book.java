package Book;


import javax.print.DocFlavor;
import java.util.Vector;

public class Book {
    private String id;
    private String name;
    private Vector<String> main_author;
    private String publisher;
    private byte version;

    Book(String id,String name,String main_author,String publisher,byte version){
        this.id = new String(id);
        this.main_author = new Vector<String>();
        this.main_author.add(main_author);
        this.publisher = new String(publisher);
        this.name = new String(name);
        this.version = version;
    }

    public String getId(){return id;}
    public String getPublisher(){return this.publisher;}
    public String getName(){return this.name;}
    public Byte getVersion(){return version;}
    public Vector<String> getMain_author(){return main_author;}


    public void setId(String id){this.id = id;}
    public void setName(String name){this.name = name;}
    public void setPublisher(String publisher){this.publisher = publisher;}
    public void setMain_author(String Mainauthor){this.main_author.add(Mainauthor);}
    public void setVersion(byte version){this.version = version;}

    public void clear_author(){this.main_author.clear();}
}
