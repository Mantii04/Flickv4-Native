package flix.com.vision.models.torrent;

import A.i;
import java.util.List;

/* loaded from: classes2.dex */
public class AllTorrentsInfoDTO {
    private String added;
    private long bytes;
    private String ended;
    private String filename;
    private String hash;
    private String host;
    private String id;
    private List<String> links;
    private int progress;
    private int split;
    private String status;

    public String getAdded() {
        return this.added;
    }

    public long getBytes() {
        return this.bytes;
    }

    public String getEnded() {
        return this.ended;
    }

    public String getFilename() {
        return this.filename;
    }

    public String getHash() {
        return this.hash;
    }

    public String getHost() {
        return this.host;
    }

    public String getId() {
        return this.id;
    }

    public List<String> getLinks() {
        return this.links;
    }

    public int getProgress() {
        return this.progress;
    }

    public int getSplit() {
        return this.split;
    }

    public String getStatus() {
        return this.status;
    }

    public void setAdded(String str) {
        this.added = str;
    }

    public void setBytes(long j7) {
        this.bytes = j7;
    }

    public void setEnded(String str) {
        this.ended = str;
    }

    public void setFilename(String str) {
        this.filename = str;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLinks(List<String> list) {
        this.links = list;
    }

    public void setProgress(int i2) {
        this.progress = i2;
    }

    public void setSplit(int i2) {
        this.split = i2;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AllTorrentsInfoDTO{id='");
        sb.append(this.id);
        sb.append("', filename='");
        sb.append(this.filename);
        sb.append("', hash='");
        sb.append(this.hash);
        sb.append("', bytes=");
        sb.append(this.bytes);
        sb.append(", host='");
        sb.append(this.host);
        sb.append("', split=");
        sb.append(this.split);
        sb.append(", progress=");
        sb.append(this.progress);
        sb.append(", status='");
        sb.append(this.status);
        sb.append("', added='");
        sb.append(this.added);
        sb.append("', links=");
        sb.append(this.links);
        sb.append(", ended='");
        return i.o(sb, this.ended, "'}");
    }
}
