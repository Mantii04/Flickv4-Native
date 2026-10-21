package org.apache.commons.lang3.text.translate;

import androidx.media3.common.util.Log;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.HashSet;

@Deprecated
/* loaded from: classes2.dex */
public class LookupTranslator extends CharSequenceTranslator {
    private final int longest;
    private final HashMap<String, String> lookupMap = new HashMap<>();
    private final HashSet<Character> prefixSet = new HashSet<>();
    private final int shortest;

    public LookupTranslator(CharSequence[]... charSequenceArr) {
        int i2 = Log.LOG_LEVEL_OFF;
        int i7 = 0;
        if (charSequenceArr != null) {
            int i8 = 0;
            for (CharSequence[] charSequenceArr2 : charSequenceArr) {
                this.lookupMap.put(charSequenceArr2[0].toString(), charSequenceArr2[1].toString());
                this.prefixSet.add(Character.valueOf(charSequenceArr2[0].charAt(0)));
                int length = charSequenceArr2[0].length();
                i2 = length < i2 ? length : i2;
                if (length > i8) {
                    i8 = length;
                }
            }
            i7 = i8;
        }
        this.shortest = i2;
        this.longest = i7;
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i2, Writer writer) throws IOException {
        if (!this.prefixSet.contains(Character.valueOf(charSequence.charAt(i2)))) {
            return 0;
        }
        int i7 = this.longest;
        if (i2 + i7 > charSequence.length()) {
            i7 = charSequence.length() - i2;
        }
        while (i7 >= this.shortest) {
            String str = this.lookupMap.get(charSequence.subSequence(i2, i2 + i7).toString());
            if (str != null) {
                writer.write(str);
                return i7;
            }
            i7--;
        }
        return 0;
    }
}
