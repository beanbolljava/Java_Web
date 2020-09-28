package goods;

import java.sql.Date;

public class Information_pear {
    private String sgoodname;
    private Float sprice;
    private String sinformation;
    private String sfactory;
    private String stype;
    private String spic;
    private String sdanwei;
    private int sbuy;
    private java.util.Date soutdate;

    public void setsgoodname(String sgoodname){
        this.sgoodname=sgoodname;
    }

    public String getsgoodname(){
        return this.sgoodname;
    }

    public void setsprice(Float sprice){
        this.sprice=sprice;
    }

    public Float getsprice(){
        return this.sprice;
    }
    public void setsinformation(String sinformation){
        this.sinformation=sinformation;
    }

    public String getsinformation(){
        return this.sinformation;
    }

    public void setsfactory(String sfactory){
        this.sfactory=sfactory;
    }

    public String getsfactory(){
        return this.sfactory;
    }
    public void setstype(String stype){
        this.stype=stype;
    }

    public String getstype(){
        return this.stype;
    }
    public void setspic(String spic){
        this.spic=spic;
    }

    public String getspic(){
        return this.spic;
    }
    public void setsdanwei(String sdanwei){
        this.sdanwei=sdanwei;
    }

    public String getsdanwei(){
        return this.sdanwei;
    }
    public void setsbuy(int sbuy){
        this.sbuy=sbuy;
    }

    public int getsbuy(){
        return this.sbuy;
    }
    public void setsoutdate(java.util.Date soutdate){
        this.soutdate=soutdate;
    }

    public java.util.Date getsoutdate(){
        return this.soutdate;
    }
}