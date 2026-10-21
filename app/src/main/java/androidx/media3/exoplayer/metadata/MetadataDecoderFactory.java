package androidx.media3.exoplayer.metadata;

import A.i;
import E0.a;
import F0.b;
import J0.j;
import L0.c;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public interface MetadataDecoderFactory {
    public static final MetadataDecoderFactory DEFAULT = new MetadataDecoderFactory() { // from class: androidx.media3.exoplayer.metadata.MetadataDecoderFactory.1
        @Override // androidx.media3.exoplayer.metadata.MetadataDecoderFactory
        public a createDecoder(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new b();
                    case "application/x-icy":
                        return new I0.a();
                    case "application/id3":
                        return new j();
                    case "application/x-emsg":
                        return new G0.b();
                    case "application/x-scte35":
                        return new c();
                }
            }
            throw new IllegalArgumentException(i.k("Attempted to create decoder for unsupported MIME type: ", str));
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataDecoderFactory
        public boolean supportsFormat(Format format) {
            String str = format.sampleMimeType;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || MimeTypes.APPLICATION_ICY.equals(str) || MimeTypes.APPLICATION_AIT.equals(str);
        }
    };

    a createDecoder(Format format);

    boolean supportsFormat(Format format);
}
