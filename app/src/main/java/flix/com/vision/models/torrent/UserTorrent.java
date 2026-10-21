package flix.com.vision.models.torrent;

import A.i;
import T4.m;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class UserTorrent {
    public boolean clicked;
    public String download;
    public String file_id;
    public String file_size_label;
    public String filename;
    public long filesize;
    public String generated_time;
    public String host;
    public boolean is_all_debrid;
    public boolean is_premiumize;
    public boolean is_real_debrid;
    public String link;
    public String mimeType;
    public BaseProcessor$TorrentServiceType source_type;
    public ArrayList<String> src = new ArrayList<>();
    public String status;
    public boolean streamable;

    public VideoSource toVideoSource() {
        if (!this.streamable) {
            return null;
        }
        VideoSource videoSource = new VideoSource();
        videoSource.streamUrl = this.download;
        BaseProcessor$TorrentServiceType baseProcessor$TorrentServiceType = this.source_type;
        if (baseProcessor$TorrentServiceType == BaseProcessor$TorrentServiceType.f16066b) {
            videoSource.isRealDebrid = true;
        }
        if (baseProcessor$TorrentServiceType == BaseProcessor$TorrentServiceType.f16067e) {
            videoSource.isPremiumize = true;
        }
        videoSource.streamable = true;
        videoSource.label = i.l("[PREMIUMIZE][USER TORRENT] [", m.readableFileSize(this.filesize), "]");
        videoSource.quality = 1000;
        LinksActivity.setRDQtyLabel(videoSource);
        return videoSource;
    }
}
