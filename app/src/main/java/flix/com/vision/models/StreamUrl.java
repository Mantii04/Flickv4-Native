package flix.com.vision.models;

import T4.f;
import android.os.Parcel;
import android.os.Parcelable;
import cz.msebera.android.httpclient.HttpHeaders;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class StreamUrl implements Parcelable {
    public static final Parcelable.Creator<StreamUrl> CREATOR = new Parcelable.Creator<StreamUrl>() { // from class: flix.com.vision.models.StreamUrl.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StreamUrl createFromParcel(Parcel parcel) {
            return new StreamUrl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StreamUrl[] newArray(int i2) {
            return new StreamUrl[i2];
        }
    };
    private boolean isValid;
    public String label;
    public String player_headers;
    public String player_referer;
    public String player_user_agent;
    public String referer;
    public int stream_id;
    public String stream_qualities;
    public String stream_url;
    public int token;
    public String token_str;
    public String user_agent;

    public StreamUrl(Parcel parcel) {
        this.isValid = true;
        this.referer = parcel.readString();
        this.user_agent = parcel.readString();
        this.player_referer = parcel.readString();
        this.player_user_agent = parcel.readString();
        this.player_headers = parcel.readString();
        this.token = parcel.readInt();
        this.token_str = parcel.readString();
        this.stream_qualities = parcel.readString();
        this.stream_id = parcel.readInt();
        this.stream_url = parcel.readString();
        this.isValid = parcel.readByte() != 0;
        this.label = parcel.readString();
    }

    private void parse(JSONObject jSONObject) {
        try {
            this.referer = jSONObject.getString(f.f3702p);
            this.player_referer = jSONObject.getString(f.f3705s);
            this.user_agent = jSONObject.getString(f.f3706t);
            this.player_user_agent = jSONObject.getString(f.f3704r);
            this.player_headers = jSONObject.getString(f.f3703q);
            this.token = Integer.parseInt(f.decode2(jSONObject.getString(f.f3695i)));
            this.stream_url = f.decode(jSONObject.getString(f.f3694h));
            this.stream_id = Integer.parseInt(f.decode2(jSONObject.getString(f.f3693g)));
            int i2 = this.token;
            if (i2 != 39 && i2 != 20 && i2 != 9 && i2 != 13 && i2 != 15 && i2 != 16 && i2 != 17 && i2 != 33 && i2 != 37 && i2 != 38 && i2 != 43 && i2 != 44 && i2 != 47 && i2 != 48) {
                this.stream_url += "";
                return;
            }
            this.isValid = false;
        } catch (Exception unused) {
        }
    }

    public boolean IsValid() {
        String str;
        return this.isValid && (str = this.stream_url) != null && str.length() > 10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Map<String, String> getHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", this.player_user_agent);
        hashMap.put(HttpHeaders.REFERER, this.player_referer);
        return hashMap;
    }

    public void m18813e(String str) {
        this.player_user_agent = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.referer);
        parcel.writeString(this.user_agent);
        parcel.writeString(this.player_referer);
        parcel.writeString(this.player_user_agent);
        parcel.writeString(this.player_headers);
        parcel.writeInt(this.token);
        parcel.writeString(this.token_str);
        parcel.writeString(this.stream_qualities);
        parcel.writeInt(this.stream_id);
        parcel.writeString(this.stream_url);
        parcel.writeInt(this.isValid ? 1 : 0);
        parcel.writeString(this.label);
    }

    public StreamUrl(JSONObject jSONObject) {
        this.isValid = true;
        parse(jSONObject);
    }

    public StreamUrl() {
        this.isValid = true;
    }
}
