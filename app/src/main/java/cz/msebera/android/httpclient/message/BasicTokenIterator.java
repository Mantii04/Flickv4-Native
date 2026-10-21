package cz.msebera.android.httpclient.message;

import A.i;
import cz.msebera.android.httpclient.HeaderIterator;
import cz.msebera.android.httpclient.ParseException;
import cz.msebera.android.httpclient.TokenIterator;
import cz.msebera.android.httpclient.util.Args;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class BasicTokenIterator implements TokenIterator {
    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos = findNext(-1);

    public BasicTokenIterator(HeaderIterator headerIterator) {
        this.headerIt = (HeaderIterator) Args.notNull(headerIterator, "Header iterator");
    }

    public String createToken(String str, int i2, int i7) {
        return str.substring(i2, i7);
    }

    public int findNext(int i2) throws ParseException {
        int findTokenSeparator;
        if (i2 >= 0) {
            findTokenSeparator = findTokenSeparator(i2);
        } else {
            if (!this.headerIt.hasNext()) {
                return -1;
            }
            this.currentHeader = this.headerIt.nextHeader().getValue();
            findTokenSeparator = 0;
        }
        int findTokenStart = findTokenStart(findTokenSeparator);
        if (findTokenStart < 0) {
            this.currentToken = null;
            return -1;
        }
        int findTokenEnd = findTokenEnd(findTokenStart);
        this.currentToken = createToken(this.currentHeader, findTokenStart, findTokenEnd);
        return findTokenEnd;
    }

    public int findTokenEnd(int i2) {
        Args.notNegative(i2, "Search position");
        int length = this.currentHeader.length();
        do {
            i2++;
            if (i2 >= length) {
                break;
            }
        } while (isTokenChar(this.currentHeader.charAt(i2)));
        return i2;
    }

    public int findTokenSeparator(int i2) {
        int notNegative = Args.notNegative(i2, "Search position");
        int length = this.currentHeader.length();
        boolean z6 = false;
        while (!z6 && notNegative < length) {
            char charAt = this.currentHeader.charAt(notNegative);
            if (isTokenSeparator(charAt)) {
                z6 = true;
            } else {
                if (!isWhitespace(charAt)) {
                    if (isTokenChar(charAt)) {
                        StringBuilder q6 = i.q(notNegative, "Tokens without separator (pos ", "): ");
                        q6.append(this.currentHeader);
                        throw new ParseException(q6.toString());
                    }
                    StringBuilder q7 = i.q(notNegative, "Invalid character after token (pos ", "): ");
                    q7.append(this.currentHeader);
                    throw new ParseException(q7.toString());
                }
                notNegative++;
            }
        }
        return notNegative;
    }

    public int findTokenStart(int i2) {
        int notNegative = Args.notNegative(i2, "Search position");
        boolean z6 = false;
        while (!z6) {
            String str = this.currentHeader;
            if (str == null) {
                break;
            }
            int length = str.length();
            while (!z6 && notNegative < length) {
                char charAt = this.currentHeader.charAt(notNegative);
                if (isTokenSeparator(charAt) || isWhitespace(charAt)) {
                    notNegative++;
                } else {
                    if (!isTokenChar(this.currentHeader.charAt(notNegative))) {
                        StringBuilder q6 = i.q(notNegative, "Invalid character before token (pos ", "): ");
                        q6.append(this.currentHeader);
                        throw new ParseException(q6.toString());
                    }
                    z6 = true;
                }
            }
            if (!z6) {
                if (this.headerIt.hasNext()) {
                    this.currentHeader = this.headerIt.nextHeader().getValue();
                    notNegative = 0;
                } else {
                    this.currentHeader = null;
                }
            }
        }
        if (z6) {
            return notNegative;
        }
        return -1;
    }

    @Override // cz.msebera.android.httpclient.TokenIterator, java.util.Iterator
    public boolean hasNext() {
        return this.currentToken != null;
    }

    public boolean isHttpSeparator(char c7) {
        return HTTP_SEPARATORS.indexOf(c7) >= 0;
    }

    public boolean isTokenChar(char c7) {
        if (Character.isLetterOrDigit(c7)) {
            return true;
        }
        return (Character.isISOControl(c7) || isHttpSeparator(c7)) ? false : true;
    }

    public boolean isTokenSeparator(char c7) {
        return c7 == ',';
    }

    public boolean isWhitespace(char c7) {
        return c7 == '\t' || Character.isSpaceChar(c7);
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException, ParseException {
        return nextToken();
    }

    @Override // cz.msebera.android.httpclient.TokenIterator
    public String nextToken() throws NoSuchElementException, ParseException {
        String str = this.currentToken;
        if (str == null) {
            throw new NoSuchElementException("Iteration already finished.");
        }
        this.searchPos = findNext(this.searchPos);
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
