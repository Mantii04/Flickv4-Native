package S0;

import a1.C0379b;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import b1.C0629a;
import b1.C0638j;
import java.util.Objects;

/* loaded from: classes.dex */
public final class e implements q {
    @Override // S0.q
    public s create(Format format) {
        String str = format.sampleMimeType;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                    return new U0.i(format.initializationData);
                case "application/pgs":
                    return new V0.b();
                case "application/x-mp4-vtt":
                    return new C0629a();
                case "text/vtt":
                    return new C0638j();
                case "application/x-quicktime-tx3g":
                    return new Z0.a(format.initializationData);
                case "text/x-ssa":
                    return new W0.b(format.initializationData);
                case "application/vobsub":
                    return new C0379b(format.initializationData);
                case "application/x-subrip":
                    return new X0.a();
                case "application/ttml+xml":
                    return new Y0.f();
            }
        }
        throw new IllegalArgumentException(A.i.k("Unsupported MIME type: ", str));
    }

    @Override // S0.q
    public int getCueReplacementBehavior(Format format) {
        String str = format.sampleMimeType;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                case "application/pgs":
                case "application/x-mp4-vtt":
                    return 2;
                case "text/vtt":
                    return 1;
                case "application/x-quicktime-tx3g":
                    return 2;
                case "text/x-ssa":
                    return 1;
                case "application/vobsub":
                    return 2;
                case "application/x-subrip":
                case "application/ttml+xml":
                    return 1;
            }
        }
        throw new IllegalArgumentException(A.i.k("Unsupported MIME type: ", str));
    }

    @Override // S0.q
    public boolean supportsFormat(Format format) {
        String str = format.sampleMimeType;
        return Objects.equals(str, MimeTypes.TEXT_SSA) || Objects.equals(str, MimeTypes.TEXT_VTT) || Objects.equals(str, MimeTypes.APPLICATION_MP4VTT) || Objects.equals(str, MimeTypes.APPLICATION_SUBRIP) || Objects.equals(str, MimeTypes.APPLICATION_TX3G) || Objects.equals(str, MimeTypes.APPLICATION_PGS) || Objects.equals(str, MimeTypes.APPLICATION_VOBSUB) || Objects.equals(str, MimeTypes.APPLICATION_DVBSUBS) || Objects.equals(str, MimeTypes.APPLICATION_TTML);
    }
}
