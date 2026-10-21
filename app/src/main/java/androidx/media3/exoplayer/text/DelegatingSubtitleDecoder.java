package androidx.media3.exoplayer.text;

import S0.h;
import S0.i;
import S0.s;

/* loaded from: classes.dex */
final class DelegatingSubtitleDecoder extends h {
    private final s subtitleParser;

    public DelegatingSubtitleDecoder(String str, s sVar) {
        super(str);
        this.subtitleParser = sVar;
    }

    @Override // S0.h
    public i decode(byte[] bArr, int i2, boolean z6) {
        if (z6) {
            this.subtitleParser.reset();
        }
        return this.subtitleParser.parseToLegacySubtitle(bArr, 0, i2);
    }
}
