package flix.com.vision.models;

/* loaded from: classes2.dex */
public class Genre {
    public int id;
    public String imageUrl;
    public String name;

    public Genre(int i2, String str) {
        this.id = i2;
        this.name = str;
    }

    public String toString() {
        return this.name;
    }

    public Genre() {
    }
}
