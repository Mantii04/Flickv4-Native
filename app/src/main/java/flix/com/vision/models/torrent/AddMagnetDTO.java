package flix.com.vision.models.torrent;

import A.i;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class AddMagnetDTO implements Serializable {
    private String id;
    private String uri;

    public String getId() {
        return this.id;
    }

    public String getUri() {
        return this.uri;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AddMagnetDTO{id='");
        sb.append(this.id);
        sb.append("', url='");
        return i.o(sb, this.uri, "'}");
    }
}
