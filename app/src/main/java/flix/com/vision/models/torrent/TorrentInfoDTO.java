package flix.com.vision.models.torrent;

import java.util.List;

/* loaded from: classes2.dex */
public class TorrentInfoDTO {
    private String added;
    private long bytes;
    private String ended;
    private String filename;
    private List<TorrentFilesDTO> files;
    private String hash;
    private String host;
    private String id;
    private List<String> links;
    private long originalBytes;
    private String originalFilename;
    private int progress;
    private int seeders;
    private int speed;
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

    public List<TorrentFilesDTO> getFiles() {
        return this.files;
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

    public long getOriginalBytes() {
        return this.originalBytes;
    }

    public String getOriginalFilename() {
        return this.originalFilename;
    }

    public int getProgress() {
        return this.progress;
    }

    public int getSeeders() {
        return this.seeders;
    }

    public int getSpeed() {
        return this.speed;
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

    public void setFiles(List<TorrentFilesDTO> list) {
        this.files = list;
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

    public void setOriginalBytes(long j7) {
        this.originalBytes = j7;
    }

    public void setOriginalFilename(String str) {
        this.originalFilename = str;
    }

    public void setProgress(int i2) {
        this.progress = i2;
    }

    public void setSeeders(int i2) {
        this.seeders = i2;
    }

    public void setSpeed(int i2) {
        this.speed = i2;
    }

    public void setSplit(int i2) {
        this.split = i2;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String toString() {
        return "TorrentInfoDTO{id='" + this.id + "', filename='" + this.filename + "', original_filename='" + this.originalFilename + "', hash='" + this.hash + "', bytes=" + this.bytes + ", original_bytes=" + this.originalBytes + ", host='" + this.host + "', split=" + this.split + ", progress=" + this.progress + ", status='" + this.status + "', added='" + this.added + "', files=" + this.files + ", links=" + this.links + ", ended='" + this.ended + "', speed=" + this.speed + ", seeders=" + this.seeders + '}';
    }
}
