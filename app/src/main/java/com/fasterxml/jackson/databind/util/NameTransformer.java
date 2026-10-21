package com.fasterxml.jackson.databind.util;

import A.i;
import b.c;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class NameTransformer {
    public static final NameTransformer NOP = new NopTransformer();

    public static class Chained extends NameTransformer implements Serializable {
        private static final long serialVersionUID = 1;
        protected final NameTransformer _t1;
        protected final NameTransformer _t2;

        public Chained(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
            this._t1 = nameTransformer;
            this._t2 = nameTransformer2;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            String reverse = this._t1.reverse(str);
            return reverse != null ? this._t2.reverse(reverse) : reverse;
        }

        public String toString() {
            return "[ChainedTransformer(" + this._t1 + ", " + this._t2 + ")]";
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return this._t1.transform(this._t2.transform(str));
        }
    }

    public static final class NopTransformer extends NameTransformer implements Serializable {
        private static final long serialVersionUID = 1;

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            return str;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return str;
        }
    }

    public static NameTransformer chainedTransformer(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
        return new Chained(nameTransformer, nameTransformer2);
    }

    public static NameTransformer simpleTransformer(final String str, final String str2) {
        boolean z6 = false;
        boolean z7 = str != null && str.length() > 0;
        if (str2 != null && str2.length() > 0) {
            z6 = true;
        }
        return z7 ? z6 ? new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.1
            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String reverse(String str3) {
                if (!str3.startsWith(str)) {
                    return null;
                }
                String substring = str3.substring(str.length());
                if (substring.endsWith(str2)) {
                    return substring.substring(0, substring.length() - str2.length());
                }
                return null;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("[PreAndSuffixTransformer('");
                sb.append(str);
                sb.append("','");
                return i.o(sb, str2, "')]");
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String transform(String str3) {
                return str + str3 + str2;
            }
        } : new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.2
            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String reverse(String str3) {
                if (str3.startsWith(str)) {
                    return str3.substring(str.length());
                }
                return null;
            }

            public String toString() {
                return i.o(new StringBuilder("[PrefixTransformer('"), str, "')]");
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String transform(String str3) {
                return i.o(new StringBuilder(), str, str3);
            }
        } : z6 ? new NameTransformer() { // from class: com.fasterxml.jackson.databind.util.NameTransformer.3
            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String reverse(String str3) {
                if (str3.endsWith(str2)) {
                    return str3.substring(0, str3.length() - str2.length());
                }
                return null;
            }

            public String toString() {
                return i.o(new StringBuilder("[SuffixTransformer('"), str2, "')]");
            }

            @Override // com.fasterxml.jackson.databind.util.NameTransformer
            public String transform(String str3) {
                StringBuilder o6 = c.o(str3);
                o6.append(str2);
                return o6.toString();
            }
        } : NOP;
    }

    public abstract String reverse(String str);

    public abstract String transform(String str);
}
