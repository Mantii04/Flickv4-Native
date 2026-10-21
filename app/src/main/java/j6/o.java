package j6;

import java.io.IOException;
import l6.V;
import org.jsoup.SerializationException;

/* loaded from: classes2.dex */
public final class o implements V {

    /* renamed from: a, reason: collision with root package name */
    public Appendable f17022a;

    /* renamed from: b, reason: collision with root package name */
    public org.jsoup.nodes.a f17023b;

    @Override // l6.V
    public void head(p pVar, int i2) {
        try {
            pVar.a(this.f17022a, i2, this.f17023b);
        } catch (IOException e3) {
            throw new SerializationException(e3);
        }
    }

    @Override // l6.V
    public void tail(p pVar, int i2) {
        if (pVar.nodeName().equals("#text")) {
            return;
        }
        try {
            pVar.b(this.f17022a, i2, this.f17023b);
        } catch (IOException e3) {
            throw new SerializationException(e3);
        }
    }
}
