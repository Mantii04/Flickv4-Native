package flix.com.vision.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.serial.serializer.a;
import flix.com.vision.models.serial.TVChannelSerializer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class ChannelTv implements Parcelable {
    public String categorie_id;
    public String categorie_name;
    public Channel channel;
    public String description;
    public String group_name;
    public boolean has_played;
    public String id;
    public boolean is_streamable;
    public String label;
    public String lang;
    public ArrayList<StreamUrl> links;
    public String logoUrl;
    public int type;
    public String url;
    public static final a SERIALIZER = new TVChannelSerializer();
    public static final Parcelable.Creator<ChannelTv> CREATOR = new Parcelable.Creator<ChannelTv>() { // from class: flix.com.vision.models.ChannelTv.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChannelTv createFromParcel(Parcel parcel) {
            return new ChannelTv(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChannelTv[] newArray(int i2) {
            return new ChannelTv[i2];
        }
    };

    public ChannelTv(Parcel parcel) {
        this.is_streamable = false;
        this.logoUrl = "";
        this.type = -1;
        this.links = new ArrayList<>();
        this.url = parcel.readString();
        this.label = parcel.readString();
        this.logoUrl = parcel.readString();
        this.lang = parcel.readString();
        this.group_name = parcel.readString();
        this.id = parcel.readString();
        this.categorie_name = parcel.readString();
        this.categorie_id = parcel.readString();
        this.type = parcel.readInt();
        this.links = parcel.readArrayList(StreamUrl.class.getClassLoader());
        if (parcel.readInt() == 1) {
            this.is_streamable = true;
        } else {
            this.is_streamable = false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return this.label.equalsIgnoreCase(((ChannelTv) obj).label);
    }

    public String toString() {
        return this.label;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.url);
        parcel.writeString(this.label);
        parcel.writeString(this.logoUrl);
        parcel.writeString(this.lang);
        parcel.writeString(this.group_name);
        parcel.writeString(this.id);
        parcel.writeString(this.categorie_name);
        parcel.writeString(this.categorie_id);
        parcel.writeInt(this.type);
        parcel.writeList(this.links);
        parcel.writeInt(this.is_streamable ? 1 : 0);
    }

    public ChannelTv(Channel channel) {
        this.is_streamable = false;
        this.logoUrl = "";
        this.type = -1;
        this.links = new ArrayList<>();
        this.channel = channel;
        if (channel != null) {
            this.label = channel.name;
            this.logoUrl = channel.logoUrl;
            this.group_name = channel.country_name;
        }
    }

    public ChannelTv() {
        this.is_streamable = false;
        this.logoUrl = "";
        this.type = -1;
        this.links = new ArrayList<>();
    }

    public ChannelTv(ChannelTv channelTv) {
        this.is_streamable = false;
        this.logoUrl = "";
        this.type = -1;
        ArrayList<StreamUrl> arrayList = new ArrayList<>();
        this.links = arrayList;
        this.url = channelTv.url;
        this.label = channelTv.label;
        this.logoUrl = channelTv.logoUrl;
        this.lang = channelTv.lang;
        this.group_name = channelTv.group_name;
        this.id = channelTv.id;
        this.categorie_id = channelTv.categorie_id;
        this.categorie_name = channelTv.categorie_name;
        this.type = channelTv.type;
        arrayList.addAll(channelTv.links);
    }
}
