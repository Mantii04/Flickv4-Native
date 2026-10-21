package flix.com.vision.models.torrent;

/* loaded from: classes2.dex */
public class TorrentFilesDTO {
    private long bytes;
    private int id;
    private String path;
    private int selected;

    public long getBytes() {
        return this.bytes;
    }

    public int getId() {
        return this.id;
    }

    public String getPath() {
        return this.path;
    }

    public int getSelected() {
        return this.selected;
    }

    public void setBytes(long j7) {
        this.bytes = j7;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSelected(int i2) {
        this.selected = i2;
    }

    public String toString() {
        return "TorrentFilesDTO{id=" + this.id + ", path='" + this.path + "', bytes=" + this.bytes + ", selected=" + this.selected + '}';
    }
}
