package j6;

import java.io.IOException;
import org.jsoup.UncheckedIOException;

/* loaded from: classes2.dex */
public final class e extends r {
    public e(String str) {
        super(str);
    }

    @Override // j6.r, j6.p
    public final void a(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
        appendable.append("<![CDATA[").append(getWholeText());
    }

    @Override // j6.r, j6.p
    public final void b(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
        try {
            appendable.append("]]>");
        } catch (IOException e3) {
            throw new UncheckedIOException(e3);
        }
    }

    @Override // j6.r, j6.p
    public String nodeName() {
        return "#cdata";
    }
}
