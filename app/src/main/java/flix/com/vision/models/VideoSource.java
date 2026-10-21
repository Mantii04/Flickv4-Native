package flix.com.vision.models;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class VideoSource implements Parcelable, Comparable {
    public static final Parcelable.Creator<VideoSource> CREATOR = new Parcelable.Creator<VideoSource>() { // from class: flix.com.vision.models.VideoSource.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VideoSource createFromParcel(Parcel parcel) {
            return new VideoSource(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VideoSource[] newArray(int i2) {
            return new VideoSource[i2];
        }
    };
    public boolean clicked;
    public boolean external_link;
    public String filename;
    public Map<String, String> headers;
    public boolean isAllDebrid;
    public boolean isChecked;
    public boolean isFvDirectStream;
    public boolean isHindi;
    public boolean isHindiDirect;
    public boolean isOffCloud;
    public boolean isPremiumSupported;
    public boolean isPremiumize;
    public boolean isRealDebrid;
    public boolean isSplitted;
    public boolean isTorbox;
    public boolean isTorrentMagnet;
    public boolean is_embed;
    public boolean is_stream_link_set;
    public String label;
    public String language;
    public String mimeType;
    public boolean move_clock_right;
    public String originalFileName;
    public int quality;
    public boolean rd_checked;
    public String referer;
    public boolean requireMXPlayer;
    public boolean requireVLC;
    public String streamUrl;
    public boolean streamable;
    public String type;

    public boolean canRealDebrid() {
        boolean z6 = true;
        boolean z7 = !this.streamable;
        if (!isStreamango() && !isOpenload() && !isRapiVideo() && !isTheVideo()) {
            z6 = false;
        }
        return z7 & z6;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        boolean z6 = this.isFvDirectStream;
        if (!z6) {
            VideoSource videoSource = (VideoSource) obj;
            if (!videoSource.isFvDirectStream) {
                return Integer.compare(videoSource.quality, this.quality);
            }
        }
        return Boolean.compare(((VideoSource) obj).isFvDirectStream, z6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        String str;
        return (obj == null || (str = this.streamUrl) == null || !str.equals(((VideoSource) obj).streamUrl)) ? false : true;
    }

    public boolean hasMultiRes() {
        String str = this.label;
        return str != null && str.toLowerCase().contains("2embed");
    }

    public boolean hasMultiSubtitles() {
        String str = this.streamUrl;
        return str != null && str.contains("2embed");
    }

    public boolean hasSubtitles() {
        String str = this.label;
        if (str != null && str.toLowerCase().contains("dood")) {
            return true;
        }
        String str2 = this.label;
        if (str2 != null && str2.toLowerCase().contains("sbembed")) {
            return true;
        }
        String str3 = this.label;
        return str3 != null && str3.toLowerCase().contains("vidnext");
    }

    public boolean isDebrid() {
        return this.isRealDebrid || this.isPremiumize || this.isAllDebrid;
    }

    public boolean isDoodlink() {
        String str = this.streamUrl;
        if (str != null) {
            return str.contains("d0000d") || this.streamUrl.contains("d0o0d") || this.streamUrl.contains("dood") || this.streamUrl.contains("dooo") || this.streamUrl.contains("dsvplay") || this.streamUrl.contains("ds2video") || this.streamUrl.contains("myvidplay");
        }
        return false;
    }

    public boolean isFileMoonlink() {
        String str = this.streamUrl;
        return str != null && str.contains("filemoon");
    }

    public boolean isOpenload() {
        String str = this.streamUrl;
        if (str != null) {
            return (str.contains("openload") || this.streamUrl.contains("oload.")) && !this.streamUrl.contains("stream");
        }
        return false;
    }

    public boolean isRapiVideo() {
        String str = this.streamUrl;
        if (str != null) {
            return str.contains("rapidvideo") || this.streamUrl.contains("bitporno");
        }
        return false;
    }

    public boolean isSplitable() {
        return this.streamUrl != null && this.isHindiDirect;
    }

    public boolean isStreamango() {
        String str = this.streamUrl;
        return str != null && str.contains("streamango");
    }

    public boolean isTheVideo() {
        return this.streamUrl != null && this.label.toLowerCase().contains("thevideo");
    }

    public String toString() {
        return this.label;
    }

    public boolean topLink() {
        return this.streamable || this.isRealDebrid || hasSubtitles() || hasMultiSubtitles() || this.streamUrl.toLowerCase().contains("flixvision") || this.isHindi || this.label.contains("FILESTREAM");
    }

    public boolean unavailable() {
        return isOpenload() || this.label.toLowerCase().contains("hydrax") || this.label.toLowerCase().contains("hqq") || this.label.toLowerCase().contains("supervideo") || this.label.toLowerCase().contains("2embed") || this.label.toLowerCase().contains("unlimitedfiles");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.label);
        parcel.writeString(this.streamUrl);
        parcel.writeByte(this.streamable ? (byte) 1 : (byte) 0);
    }

    private VideoSource(Parcel parcel) {
        this.headers = new HashMap();
        this.quality = 0;
        this.isHindi = false;
        this.isRealDebrid = false;
        this.isPremiumize = false;
        this.isAllDebrid = false;
        this.isChecked = false;
        this.is_stream_link_set = false;
        this.isSplitted = false;
        this.external_link = false;
        this.move_clock_right = false;
        this.label = parcel.readString();
        this.streamUrl = parcel.readString();
        this.streamable = parcel.readByte() != 0;
    }

    public VideoSource() {
        this.headers = new HashMap();
        this.quality = 0;
        this.isHindi = false;
        this.isRealDebrid = false;
        this.isPremiumize = false;
        this.isAllDebrid = false;
        this.isChecked = false;
        this.is_stream_link_set = false;
        this.isSplitted = false;
        this.external_link = false;
        this.move_clock_right = false;
    }
}
