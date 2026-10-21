package flix.com.vision.models;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class Episode implements Parcelable {
    public static final Parcelable.Creator<Episode> CREATOR = new Parcelable.Creator<Episode>() { // from class: flix.com.vision.models.Episode.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Episode createFromParcel(Parcel parcel) {
            return new Episode(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Episode[] newArray(int i2) {
            return new Episode[i2];
        }
    };
    public boolean aired;
    public boolean anime;
    public boolean cartoon;
    public String data_id;
    public String date;
    public String episode_id;
    public String img_url;
    public String label;
    public int number;
    public String plot;
    public String runtime;
    public String server_id;
    public String title;
    public int tmdb_id;
    public String url;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        if (this.anime || this.cartoon) {
            return this.title;
        }
        return this.number + ". " + this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.label);
        parcel.writeString(this.url);
        parcel.writeString(this.data_id);
        parcel.writeString(this.server_id);
        parcel.writeString(this.episode_id);
        parcel.writeString(this.title);
        parcel.writeInt(this.number);
        parcel.writeInt(this.anime ? 1 : 0);
        parcel.writeInt(this.cartoon ? 1 : 0);
        parcel.writeString(this.runtime);
        parcel.writeInt(this.aired ? 1 : 0);
        parcel.writeString(this.date);
    }

    private Episode(Parcel parcel) {
        this.title = "";
        this.anime = false;
        this.cartoon = false;
        this.runtime = "N/A";
        this.aired = false;
        this.label = parcel.readString();
        this.url = parcel.readString();
        this.data_id = parcel.readString();
        this.server_id = parcel.readString();
        this.episode_id = parcel.readString();
        this.title = parcel.readString();
        this.number = parcel.readInt();
        this.anime = parcel.readByte() != 0;
        this.cartoon = parcel.readByte() != 0;
        this.runtime = parcel.readString();
        this.aired = parcel.readByte() != 0;
        this.date = parcel.readString();
    }

    public Episode() {
        this.title = "";
        this.anime = false;
        this.cartoon = false;
        this.runtime = "N/A";
        this.aired = false;
    }
}
