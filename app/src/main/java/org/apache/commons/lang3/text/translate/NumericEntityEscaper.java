package org.apache.commons.lang3.text.translate;

import androidx.media3.common.util.Log;
import java.io.IOException;
import java.io.Writer;

@Deprecated
/* loaded from: classes2.dex */
public class NumericEntityEscaper extends CodePointTranslator {
    private final int above;
    private final int below;
    private final boolean between;

    private NumericEntityEscaper(int i2, int i7, boolean z6) {
        this.below = i2;
        this.above = i7;
        this.between = z6;
    }

    public static NumericEntityEscaper above(int i2) {
        return outsideOf(0, i2);
    }

    public static NumericEntityEscaper below(int i2) {
        return outsideOf(i2, Log.LOG_LEVEL_OFF);
    }

    public static NumericEntityEscaper between(int i2, int i7) {
        return new NumericEntityEscaper(i2, i7, true);
    }

    public static NumericEntityEscaper outsideOf(int i2, int i7) {
        return new NumericEntityEscaper(i2, i7, false);
    }

    @Override // org.apache.commons.lang3.text.translate.CodePointTranslator
    public boolean translate(int i2, Writer writer) throws IOException {
        if (this.between) {
            if (i2 < this.below || i2 > this.above) {
                return false;
            }
        } else if (i2 >= this.below && i2 <= this.above) {
            return false;
        }
        writer.write("&#");
        writer.write(Integer.toString(i2, 10));
        writer.write(59);
        return true;
    }

    public NumericEntityEscaper() {
        this(0, Log.LOG_LEVEL_OFF, true);
    }
}
