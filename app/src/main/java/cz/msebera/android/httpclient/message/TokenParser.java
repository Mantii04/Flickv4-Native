package cz.msebera.android.httpclient.message;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.util.CharArrayBuffer;
import java.util.BitSet;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class TokenParser {
    public static final char CR = '\r';
    public static final char DQUOTE = '\"';
    public static final char ESCAPE = '\\';
    public static final char HT = '\t';
    public static final TokenParser INSTANCE = new TokenParser();
    public static final char LF = '\n';
    public static final char SP = ' ';

    public static BitSet INIT_BITSET(int... iArr) {
        BitSet bitSet = new BitSet();
        for (int i2 : iArr) {
            bitSet.set(i2);
        }
        return bitSet;
    }

    public static boolean isWhitespace(char c7) {
        return c7 == ' ' || c7 == '\t' || c7 == '\r' || c7 == '\n';
    }

    public void copyContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound; pos2++) {
            char charAt = charArrayBuffer.charAt(pos2);
            if ((bitSet != null && bitSet.get(charAt)) || isWhitespace(charAt)) {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    public void copyQuotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, StringBuilder sb) {
        if (parserCursor.atEnd()) {
            return;
        }
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        if (charArrayBuffer.charAt(pos) != '\"') {
            return;
        }
        int i2 = pos + 1;
        int i7 = pos2 + 1;
        boolean z6 = false;
        while (true) {
            if (i7 >= upperBound) {
                break;
            }
            char charAt = charArrayBuffer.charAt(i7);
            if (z6) {
                if (charAt != '\"' && charAt != '\\') {
                    sb.append(ESCAPE);
                }
                sb.append(charAt);
                z6 = false;
            } else if (charAt == '\"') {
                i2++;
                break;
            } else if (charAt == '\\') {
                z6 = true;
            } else if (charAt != '\r' && charAt != '\n') {
                sb.append(charAt);
            }
            i7++;
            i2++;
        }
        parserCursor.updatePos(i2);
    }

    public void copyUnquotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound; pos2++) {
            char charAt = charArrayBuffer.charAt(pos2);
            if ((bitSet != null && bitSet.get(charAt)) || isWhitespace(charAt) || charAt == '\"') {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    public String parseToken(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z6 = false;
            while (!parserCursor.atEnd()) {
                char charAt = charArrayBuffer.charAt(parserCursor.getPos());
                if (bitSet != null && bitSet.get(charAt)) {
                    break loop0;
                }
                if (isWhitespace(charAt)) {
                    skipWhiteSpace(charArrayBuffer, parserCursor);
                    z6 = true;
                } else {
                    if (z6 && sb.length() > 0) {
                        sb.append(SP);
                    }
                    copyContent(charArrayBuffer, parserCursor, bitSet, sb);
                }
            }
            break loop0;
        }
        return sb.toString();
    }

    public String parseValue(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z6 = false;
            while (!parserCursor.atEnd()) {
                char charAt = charArrayBuffer.charAt(parserCursor.getPos());
                if (bitSet != null && bitSet.get(charAt)) {
                    break loop0;
                }
                if (isWhitespace(charAt)) {
                    skipWhiteSpace(charArrayBuffer, parserCursor);
                    z6 = true;
                } else if (charAt == '\"') {
                    if (z6 && sb.length() > 0) {
                        sb.append(SP);
                    }
                    copyQuotedContent(charArrayBuffer, parserCursor, sb);
                } else {
                    if (z6 && sb.length() > 0) {
                        sb.append(SP);
                    }
                    copyUnquotedContent(charArrayBuffer, parserCursor, bitSet, sb);
                }
            }
            break loop0;
        }
        return sb.toString();
    }

    public void skipWhiteSpace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound && isWhitespace(charArrayBuffer.charAt(pos2)); pos2++) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }
}
