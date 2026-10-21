package androidx.media3.exoplayer.text;

import A.i;
import S0.e;
import S0.j;
import S0.s;
import T0.c;
import T0.g;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public interface SubtitleDecoderFactory {
    public static final SubtitleDecoderFactory DEFAULT = new SubtitleDecoderFactory() { // from class: androidx.media3.exoplayer.text.SubtitleDecoderFactory.1
        private final e delegate = new e();

        @Override // androidx.media3.exoplayer.text.SubtitleDecoderFactory
        public j createDecoder(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                switch (str) {
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new c(str, format.accessibilityChannel, 16000L);
                    case "application/cea-708":
                        return new g(format.accessibilityChannel, format.initializationData);
                }
            }
            if (!this.delegate.supportsFormat(format)) {
                throw new IllegalArgumentException(i.k("Attempted to create decoder for unsupported MIME type: ", str));
            }
            s create = this.delegate.create(format);
            return new DelegatingSubtitleDecoder(create.getClass().getSimpleName().concat("Decoder"), create);
        }

        @Override // androidx.media3.exoplayer.text.SubtitleDecoderFactory
        public boolean supportsFormat(Format format) {
            String str = format.sampleMimeType;
            return this.delegate.supportsFormat(format) || Objects.equals(str, MimeTypes.APPLICATION_CEA608) || Objects.equals(str, MimeTypes.APPLICATION_MP4CEA608) || Objects.equals(str, MimeTypes.APPLICATION_CEA708);
        }
    };

    j createDecoder(Format format);

    boolean supportsFormat(Format format);
}
