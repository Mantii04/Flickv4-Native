package flix.com.vision.models;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class Video implements Parcelable {
    public static final Parcelable.Creator<Video> CREATOR = new Parcelable.Creator<Video>() { // from class: flix.com.vision.models.Video.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Video createFromParcel(Parcel parcel) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Video[] newArray(int i2) {
            return new Video[i2];
        }
    };
    private boolean extraBuffering;
    private Map<String, String> headers;
    private boolean isVoe;
    private String source;
    private List<Subtitle> subtitles;
    private String type;

    public Video(String str, List<Subtitle> list, Map<String, String> map, String str2, boolean z6, boolean z7) {
        this.source = str;
        this.subtitles = list;
        this.headers = map;
        this.type = str2;
        this.extraBuffering = z6;
        this.isVoe = z7;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Video video = (Video) obj;
            if (this.extraBuffering == video.extraBuffering && this.isVoe == video.isVoe && Objects.equals(this.source, video.source) && Objects.equals(this.subtitles, video.subtitles) && Objects.equals(this.headers, video.headers) && Objects.equals(this.type, video.type)) {
                return true;
            }
        }
        return false;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public String getSource() {
        return this.source;
    }

    public List<Subtitle> getSubtitles() {
        return this.subtitles;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        return Objects.hash(this.source, this.subtitles, this.headers, this.type, Boolean.valueOf(this.extraBuffering), Boolean.valueOf(this.isVoe));
    }

    public boolean isExtraBuffering() {
        return this.extraBuffering;
    }

    public boolean isVoe() {
        return this.isVoe;
    }

    public void setExtraBuffering(boolean z6) {
        this.extraBuffering = z6;
    }

    public void setHeaders(Map<String, String> map) {
        this.headers = map;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setSubtitles(List<Subtitle> list) {
        this.subtitles = list;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVoe(boolean z6) {
        this.isVoe = z6;
    }

    public String toString() {
        return "Video{source='" + this.source + "', subtitles=" + this.subtitles + ", headers=" + this.headers + ", type='" + this.type + "', extraBuffering=" + this.extraBuffering + ", isVoe=" + this.isVoe + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
    }
}
