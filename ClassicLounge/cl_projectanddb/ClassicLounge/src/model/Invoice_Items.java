package model;

public class Invoice_Items {

    private String item;
    private int qty;
    private double price;
    private double amount;

    public Invoice_Items(String item, int qty, double price, double amount) {
        this.item = item;
        this.qty = qty;
        this.price = price;
        this.amount = amount;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}
