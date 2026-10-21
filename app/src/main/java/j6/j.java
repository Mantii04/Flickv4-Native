package j6;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import cz.msebera.android.httpclient.message.TokenParser;
import l6.V;

/* loaded from: classes2.dex */
public final class j implements V {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ StringBuilder f17015a;

    public j(StringBuilder sb) {
        this.f17015a = sb;
    }

    @Override // l6.V
    public void head(p pVar, int i2) {
        boolean z6 = pVar instanceof r;
        StringBuilder sb = this.f17015a;
        if (z6) {
            r rVar = (r) pVar;
            String wholeText = rVar.getWholeText();
            if (org.jsoup.nodes.b.e(rVar.f17024b) || (rVar instanceof e)) {
                sb.append(wholeText);
                return;
            } else {
                h6.j.appendNormalisedWhitespace(sb, wholeText, r.e(sb));
                return;
            }
        }
        if (pVar instanceof org.jsoup.nodes.b) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) pVar;
            if (sb.length() > 0) {
                if ((bVar.isBlock() || bVar.f19210f.getName().equals(CmcdConfiguration.KEY_BITRATE)) && !r.e(sb)) {
                    sb.append(TokenParser.SP);
                }
            }
        }
    }

    @Override // l6.V
    public void tail(p pVar, int i2) {
        if ((pVar instanceof org.jsoup.nodes.b) && ((org.jsoup.nodes.b) pVar).isBlock() && (pVar.nextSibling() instanceof r)) {
            StringBuilder sb = this.f17015a;
            if (r.e(sb)) {
                return;
            }
            sb.append(TokenParser.SP);
        }
    }
}
