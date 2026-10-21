package flix.com.vision.models;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class Season implements Parcelable {
    public static final Parcelable.Creator<Season> CREATOR = new Parcelable.Creator<Season>() { // from class: flix.com.vision.models.Season.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Season createFromParcel(Parcel parcel) {
            return new Season(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Season[] newArray(int i2) {
            return new Season[i2];
        }
    };
    public int episode_count;
    public String label;
    public int number;
    public String plot;
    public String poster;
    public String year;

    public Season() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.label);
        parcel.writeInt(this.number);
        parcel.writeInt(this.episode_count);
        parcel.writeString(this.plot);
        parcel.writeString(this.poster);
        parcel.writeString(this.year);
    }

    public Season(Parcel parcel) {
        this.label = parcel.readString();
        this.number = parcel.readInt();
        this.episode_count = parcel.readInt();
        this.plot = parcel.readString();
        this.poster = parcel.readString();
        this.year = parcel.readString();
    }
}
