package org.apache.commons.lang3.text;

import A.i;
import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.builder.Builder;

@Deprecated
/* loaded from: classes2.dex */
public class StrBuilder implements CharSequence, Appendable, Serializable, Builder<String> {
    static final int CAPACITY = 32;
    private static final long serialVersionUID = 7628716375283629643L;
    protected char[] buffer;
    private String newLine;
    private String nullText;
    protected int size;

    public class StrBuilderTokenizer extends StrTokenizer {
        public StrBuilderTokenizer() {
        }

        @Override // org.apache.commons.lang3.text.StrTokenizer
        public String getContent() {
            String content = super.getContent();
            return content == null ? StrBuilder.this.toString() : content;
        }

        @Override // org.apache.commons.lang3.text.StrTokenizer
        public List<String> tokenize(char[] cArr, int i2, int i7) {
            if (cArr != null) {
                return super.tokenize(cArr, i2, i7);
            }
            StrBuilder strBuilder = StrBuilder.this;
            return super.tokenize(strBuilder.buffer, 0, strBuilder.size());
        }
    }

    public class StrBuilderWriter extends Writer {
        public StrBuilderWriter() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i2) {
            StrBuilder.this.append((char) i2);
        }

        @Override // java.io.Writer
        public void write(char[] cArr) {
            StrBuilder.this.append(cArr);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i7) {
            StrBuilder.this.append(cArr, i2, i7);
        }

        @Override // java.io.Writer
        public void write(String str) {
            StrBuilder.this.append(str);
        }

        @Override // java.io.Writer
        public void write(String str, int i2, int i7) {
            StrBuilder.this.append(str, i2, i7);
        }
    }

    public StrBuilder() {
        this(32);
    }

    private void deleteImpl(int i2, int i7, int i8) {
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i7, cArr, i2, this.size - i7);
        this.size -= i8;
    }

    private void replaceImpl(int i2, int i7, int i8, String str, int i9) {
        int i10 = (this.size - i8) + i9;
        if (i9 != i8) {
            ensureCapacity(i10);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i7, cArr, i2 + i9, this.size - i7);
            this.size = i10;
        }
        if (i9 > 0) {
            str.getChars(0, i9, this.buffer, i2);
        }
    }

    public <T> StrBuilder appendAll(T... tArr) {
        if (tArr != null && tArr.length > 0) {
            for (T t6 : tArr) {
                append(t6);
            }
        }
        return this;
    }

    public StrBuilder appendFixedWidthPadLeft(Object obj, int i2, char c7) {
        if (i2 > 0) {
            ensureCapacity(this.size + i2);
            String nullText = obj == null ? getNullText() : obj.toString();
            if (nullText == null) {
                nullText = "";
            }
            int length = nullText.length();
            if (length >= i2) {
                nullText.getChars(length - i2, length, this.buffer, this.size);
            } else {
                int i7 = i2 - length;
                for (int i8 = 0; i8 < i7; i8++) {
                    this.buffer[this.size + i8] = c7;
                }
                nullText.getChars(0, length, this.buffer, this.size + i7);
            }
            this.size += i2;
        }
        return this;
    }

    public StrBuilder appendFixedWidthPadRight(Object obj, int i2, char c7) {
        if (i2 > 0) {
            ensureCapacity(this.size + i2);
            String nullText = obj == null ? getNullText() : obj.toString();
            if (nullText == null) {
                nullText = "";
            }
            int length = nullText.length();
            if (length >= i2) {
                nullText.getChars(0, i2, this.buffer, this.size);
            } else {
                int i7 = i2 - length;
                nullText.getChars(0, length, this.buffer, this.size);
                for (int i8 = 0; i8 < i7; i8++) {
                    this.buffer[this.size + length + i8] = c7;
                }
            }
            this.size += i2;
        }
        return this;
    }

    public StrBuilder appendNewLine() {
        String str = this.newLine;
        if (str != null) {
            return append(str);
        }
        append(System.lineSeparator());
        return this;
    }

    public StrBuilder appendNull() {
        String str = this.nullText;
        return str == null ? this : append(str);
    }

    public StrBuilder appendPadding(int i2, char c7) {
        if (i2 >= 0) {
            ensureCapacity(this.size + i2);
            for (int i7 = 0; i7 < i2; i7++) {
                char[] cArr = this.buffer;
                int i8 = this.size;
                this.size = i8 + 1;
                cArr[i8] = c7;
            }
        }
        return this;
    }

    public StrBuilder appendSeparator(String str) {
        return appendSeparator(str, (String) null);
    }

    public void appendTo(Appendable appendable) throws IOException {
        if (appendable instanceof Writer) {
            ((Writer) appendable).write(this.buffer, 0, this.size);
            return;
        }
        if (appendable instanceof StringBuilder) {
            ((StringBuilder) appendable).append(this.buffer, 0, this.size);
            return;
        }
        if (appendable instanceof StringBuffer) {
            ((StringBuffer) appendable).append(this.buffer, 0, this.size);
        } else if (appendable instanceof CharBuffer) {
            ((CharBuffer) appendable).put(this.buffer, 0, this.size);
        } else {
            appendable.append(this);
        }
    }

    public StrBuilder appendWithSeparators(Object[] objArr, String str) {
        if (objArr != null && objArr.length > 0) {
            String objects = Objects.toString(str, "");
            append(objArr[0]);
            for (int i2 = 1; i2 < objArr.length; i2++) {
                append(objects);
                append(objArr[i2]);
            }
        }
        return this;
    }

    public StrBuilder appendln(Object obj) {
        return append(obj).appendNewLine();
    }

    public Reader asReader() {
        return new StrBuilderReader();
    }

    public StrTokenizer asTokenizer() {
        return new StrBuilderTokenizer();
    }

    public Writer asWriter() {
        return new StrBuilderWriter();
    }

    public int capacity() {
        return this.buffer.length;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        if (i2 < 0 || i2 >= length()) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        return this.buffer[i2];
    }

    public StrBuilder clear() {
        this.size = 0;
        return this;
    }

    public boolean contains(char c7) {
        char[] cArr = this.buffer;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (cArr[i2] == c7) {
                return true;
            }
        }
        return false;
    }

    public StrBuilder delete(int i2, int i7) {
        int validateRange = validateRange(i2, i7);
        int i8 = validateRange - i2;
        if (i8 > 0) {
            deleteImpl(i2, validateRange, i8);
        }
        return this;
    }

    public StrBuilder deleteAll(char c7) {
        int i2 = 0;
        while (i2 < this.size) {
            if (this.buffer[i2] == c7) {
                int i7 = i2;
                do {
                    i7++;
                    if (i7 >= this.size) {
                        break;
                    }
                } while (this.buffer[i7] == c7);
                int i8 = i7 - i2;
                deleteImpl(i2, i7, i8);
                i2 = i7 - i8;
            }
            i2++;
        }
        return this;
    }

    public StrBuilder deleteCharAt(int i2) {
        if (i2 < 0 || i2 >= this.size) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        deleteImpl(i2, i2 + 1, 1);
        return this;
    }

    public StrBuilder deleteFirst(char c7) {
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.buffer[i2] == c7) {
                deleteImpl(i2, i2 + 1, 1);
                return this;
            }
        }
        return this;
    }

    public boolean endsWith(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        int i2 = this.size;
        if (length > i2) {
            return false;
        }
        int i7 = i2 - length;
        int i8 = 0;
        while (i8 < length) {
            if (this.buffer[i7] != str.charAt(i8)) {
                return false;
            }
            i8++;
            i7++;
        }
        return true;
    }

    public StrBuilder ensureCapacity(int i2) {
        char[] cArr = this.buffer;
        if (i2 > cArr.length) {
            char[] cArr2 = new char[i2 * 2];
            this.buffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.size);
        }
        return this;
    }

    public boolean equals(StrBuilder strBuilder) {
        int i2;
        if (this == strBuilder) {
            return true;
        }
        if (strBuilder == null || (i2 = this.size) != strBuilder.size) {
            return false;
        }
        char[] cArr = this.buffer;
        char[] cArr2 = strBuilder.buffer;
        for (int i7 = i2 - 1; i7 >= 0; i7--) {
            if (cArr[i7] != cArr2[i7]) {
                return false;
            }
        }
        return true;
    }

    public boolean equalsIgnoreCase(StrBuilder strBuilder) {
        if (this == strBuilder) {
            return true;
        }
        int i2 = this.size;
        if (i2 != strBuilder.size) {
            return false;
        }
        char[] cArr = this.buffer;
        char[] cArr2 = strBuilder.buffer;
        for (int i7 = i2 - 1; i7 >= 0; i7--) {
            char c7 = cArr[i7];
            char c8 = cArr2[i7];
            if (c7 != c8 && Character.toUpperCase(c7) != Character.toUpperCase(c8)) {
                return false;
            }
        }
        return true;
    }

    public char[] getChars(char[] cArr) {
        int length = length();
        if (cArr == null || cArr.length < length) {
            cArr = new char[length];
        }
        System.arraycopy(this.buffer, 0, cArr, 0, length);
        return cArr;
    }

    public String getNewLineText() {
        return this.newLine;
    }

    public String getNullText() {
        return this.nullText;
    }

    public int hashCode() {
        char[] cArr = this.buffer;
        int i2 = 0;
        for (int i7 = this.size - 1; i7 >= 0; i7--) {
            i2 = (i2 * 31) + cArr[i7];
        }
        return i2;
    }

    public int indexOf(char c7) {
        return indexOf(c7, 0);
    }

    public StrBuilder insert(int i2, Object obj) {
        return obj == null ? insert(i2, this.nullText) : insert(i2, obj.toString());
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int lastIndexOf(char c7) {
        return lastIndexOf(c7, this.size - 1);
    }

    public String leftString(int i2) {
        if (i2 <= 0) {
            return "";
        }
        int i7 = this.size;
        return i2 >= i7 ? new String(this.buffer, 0, i7) : new String(this.buffer, 0, i2);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.size;
    }

    public String midString(int i2, int i7) {
        int i8;
        if (i2 < 0) {
            i2 = 0;
        }
        return (i7 <= 0 || i2 >= (i8 = this.size)) ? "" : i8 <= i2 + i7 ? new String(this.buffer, i2, i8 - i2) : new String(this.buffer, i2, i7);
    }

    public StrBuilder minimizeCapacity() {
        if (this.buffer.length > length()) {
            char[] cArr = this.buffer;
            char[] cArr2 = new char[length()];
            this.buffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.size);
        }
        return this;
    }

    public int readFrom(Readable readable) throws IOException {
        int i2 = this.size;
        if (readable instanceof Reader) {
            Reader reader = (Reader) readable;
            ensureCapacity(i2 + 1);
            while (true) {
                char[] cArr = this.buffer;
                int i7 = this.size;
                int read = reader.read(cArr, i7, cArr.length - i7);
                if (read == -1) {
                    break;
                }
                int i8 = this.size + read;
                this.size = i8;
                ensureCapacity(i8 + 1);
            }
        } else if (readable instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) readable;
            int remaining = charBuffer.remaining();
            ensureCapacity(this.size + remaining);
            charBuffer.get(this.buffer, this.size, remaining);
            this.size += remaining;
        } else {
            while (true) {
                ensureCapacity(this.size + 1);
                char[] cArr2 = this.buffer;
                int i9 = this.size;
                int read2 = readable.read(CharBuffer.wrap(cArr2, i9, cArr2.length - i9));
                if (read2 == -1) {
                    break;
                }
                this.size += read2;
            }
        }
        return this.size - i2;
    }

    public StrBuilder replace(int i2, int i7, String str) {
        int validateRange = validateRange(i2, i7);
        replaceImpl(i2, validateRange, validateRange - i2, str, str == null ? 0 : str.length());
        return this;
    }

    public StrBuilder replaceAll(char c7, char c8) {
        if (c7 != c8) {
            for (int i2 = 0; i2 < this.size; i2++) {
                char[] cArr = this.buffer;
                if (cArr[i2] == c7) {
                    cArr[i2] = c8;
                }
            }
        }
        return this;
    }

    public StrBuilder replaceFirst(char c7, char c8) {
        if (c7 != c8) {
            for (int i2 = 0; i2 < this.size; i2++) {
                char[] cArr = this.buffer;
                if (cArr[i2] == c7) {
                    cArr[i2] = c8;
                    return this;
                }
            }
        }
        return this;
    }

    public StrBuilder reverse() {
        int i2 = this.size;
        if (i2 != 0) {
            int i7 = i2 / 2;
            char[] cArr = this.buffer;
            int i8 = i2 - 1;
            int i9 = 0;
            while (i9 < i7) {
                char c7 = cArr[i9];
                cArr[i9] = cArr[i8];
                cArr[i8] = c7;
                i9++;
                i8--;
            }
        }
        return this;
    }

    public String rightString(int i2) {
        if (i2 <= 0) {
            return "";
        }
        int i7 = this.size;
        return i2 >= i7 ? new String(this.buffer, 0, i7) : new String(this.buffer, i7 - i2, i2);
    }

    public StrBuilder setCharAt(int i2, char c7) {
        if (i2 < 0 || i2 >= length()) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        this.buffer[i2] = c7;
        return this;
    }

    public StrBuilder setLength(int i2) {
        if (i2 < 0) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        int i7 = this.size;
        if (i2 < i7) {
            this.size = i2;
            return this;
        }
        if (i2 > i7) {
            ensureCapacity(i2);
            this.size = i2;
            for (int i8 = this.size; i8 < i2; i8++) {
                this.buffer[i8] = 0;
            }
        }
        return this;
    }

    public StrBuilder setNewLineText(String str) {
        this.newLine = str;
        return this;
    }

    public StrBuilder setNullText(String str) {
        if (str != null && str.isEmpty()) {
            str = null;
        }
        this.nullText = str;
        return this;
    }

    public int size() {
        return this.size;
    }

    public boolean startsWith(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        if (length > this.size) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (this.buffer[i2] != str.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i7) {
        if (i2 < 0) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        if (i7 > this.size) {
            throw new StringIndexOutOfBoundsException(i7);
        }
        if (i2 <= i7) {
            return substring(i2, i7);
        }
        throw new StringIndexOutOfBoundsException(i7 - i2);
    }

    public String substring(int i2) {
        return substring(i2, this.size);
    }

    public char[] toCharArray() {
        int i2 = this.size;
        if (i2 == 0) {
            return ArrayUtils.EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[i2];
        System.arraycopy(this.buffer, 0, cArr, 0, i2);
        return cArr;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return new String(this.buffer, 0, this.size);
    }

    public StringBuffer toStringBuffer() {
        StringBuffer stringBuffer = new StringBuffer(this.size);
        stringBuffer.append(this.buffer, 0, this.size);
        return stringBuffer;
    }

    public StringBuilder toStringBuilder() {
        StringBuilder sb = new StringBuilder(this.size);
        sb.append(this.buffer, 0, this.size);
        return sb;
    }

    public StrBuilder trim() {
        int i2 = this.size;
        if (i2 != 0) {
            char[] cArr = this.buffer;
            int i7 = 0;
            while (i7 < i2 && cArr[i7] <= ' ') {
                i7++;
            }
            while (i7 < i2 && cArr[i2 - 1] <= ' ') {
                i2--;
            }
            int i8 = this.size;
            if (i2 < i8) {
                delete(i2, i8);
            }
            if (i7 > 0) {
                delete(0, i7);
            }
        }
        return this;
    }

    public void validateIndex(int i2) {
        if (i2 < 0 || i2 > this.size) {
            throw new StringIndexOutOfBoundsException(i2);
        }
    }

    public int validateRange(int i2, int i7) {
        if (i2 < 0) {
            throw new StringIndexOutOfBoundsException(i2);
        }
        int i8 = this.size;
        if (i7 > i8) {
            i7 = i8;
        }
        if (i2 <= i7) {
            return i7;
        }
        throw new StringIndexOutOfBoundsException("end < start");
    }

    public class StrBuilderReader extends Reader {
        private int mark;
        private int pos;

        public StrBuilderReader() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Reader
        public void mark(int i2) {
            this.mark = this.pos;
        }

        @Override // java.io.Reader
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.Reader
        public int read() {
            if (!ready()) {
                return -1;
            }
            StrBuilder strBuilder = StrBuilder.this;
            int i2 = this.pos;
            this.pos = i2 + 1;
            return strBuilder.charAt(i2);
        }

        @Override // java.io.Reader
        public boolean ready() {
            return this.pos < StrBuilder.this.size();
        }

        @Override // java.io.Reader
        public void reset() {
            this.pos = this.mark;
        }

        @Override // java.io.Reader
        public long skip(long j7) {
            if (this.pos + j7 > StrBuilder.this.size()) {
                j7 = StrBuilder.this.size() - this.pos;
            }
            if (j7 < 0) {
                return 0L;
            }
            this.pos = (int) (this.pos + j7);
            return j7;
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i2, int i7) {
            int i8;
            if (i2 < 0 || i7 < 0 || i2 > cArr.length || (i8 = i2 + i7) > cArr.length || i8 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i7 == 0) {
                return 0;
            }
            if (this.pos >= StrBuilder.this.size()) {
                return -1;
            }
            if (this.pos + i7 > StrBuilder.this.size()) {
                i7 = StrBuilder.this.size() - this.pos;
            }
            StrBuilder strBuilder = StrBuilder.this;
            int i9 = this.pos;
            strBuilder.getChars(i9, i9 + i7, cArr, i2);
            this.pos += i7;
            return i7;
        }
    }

    public StrBuilder(int i2) {
        this.buffer = new char[i2 <= 0 ? 32 : i2];
    }

    public StrBuilder appendSeparator(String str, String str2) {
        if (isEmpty()) {
            str = str2;
        }
        if (str != null) {
            append(str);
        }
        return this;
    }

    public StrBuilder appendln(String str) {
        return append(str).appendNewLine();
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public String build() {
        return toString();
    }

    public int indexOf(char c7, int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 >= this.size) {
            return -1;
        }
        char[] cArr = this.buffer;
        while (i2 < this.size) {
            if (cArr[i2] == c7) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int lastIndexOf(char c7, int i2) {
        int i7 = this.size;
        if (i2 >= i7) {
            i2 = i7 - 1;
        }
        if (i2 < 0) {
            return -1;
        }
        while (i2 >= 0) {
            if (this.buffer[i2] == c7) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public String substring(int i2, int i7) {
        return new String(this.buffer, i2, validateRange(i2, i7) - i2);
    }

    public StrBuilder appendln(String str, int i2, int i7) {
        return append(str, i2, i7).appendNewLine();
    }

    public StrBuilder insert(int i2, String str) {
        int length;
        validateIndex(i2);
        if (str == null) {
            str = this.nullText;
        }
        if (str != null && (length = str.length()) > 0) {
            int i7 = this.size + length;
            ensureCapacity(i7);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i2, cArr, i2 + length, this.size - i2);
            this.size = i7;
            str.getChars(0, length, this.buffer, i2);
        }
        return this;
    }

    public StrBuilder(String str) {
        if (str == null) {
            this.buffer = new char[32];
        } else {
            this.buffer = new char[str.length() + 32];
            append(str);
        }
    }

    public StrBuilder append(Object obj) {
        if (obj == null) {
            return appendNull();
        }
        if (obj instanceof CharSequence) {
            return append((CharSequence) obj);
        }
        return append(obj.toString());
    }

    public StrBuilder appendAll(Iterable<?> iterable) {
        if (iterable != null) {
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                append(it.next());
            }
        }
        return this;
    }

    public StrBuilder appendSeparator(char c7) {
        if (size() > 0) {
            append(c7);
        }
        return this;
    }

    public StrBuilder appendln(String str, Object... objArr) {
        return append(str, objArr).appendNewLine();
    }

    public boolean contains(String str) {
        return indexOf(str, 0) >= 0;
    }

    public StrBuilder deleteFirst(String str) {
        int indexOf;
        int length = str == null ? 0 : str.length();
        if (length > 0 && (indexOf = indexOf(str, 0)) >= 0) {
            deleteImpl(indexOf, indexOf + length, length);
        }
        return this;
    }

    public int lastIndexOf(String str) {
        return lastIndexOf(str, this.size - 1);
    }

    public StrBuilder replace(StrMatcher strMatcher, String str, int i2, int i7, int i8) {
        return replaceImpl(strMatcher, str, i2, validateRange(i2, i7), i8);
    }

    public StrBuilder replaceAll(String str, String str2) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            int length2 = str2 == null ? 0 : str2.length();
            int indexOf = indexOf(str, 0);
            while (indexOf >= 0) {
                replaceImpl(indexOf, indexOf + length, length, str2, length2);
                indexOf = indexOf(str, indexOf + length2);
            }
        }
        return this;
    }

    public StrBuilder replaceFirst(String str, String str2) {
        int indexOf;
        int length = str == null ? 0 : str.length();
        if (length <= 0 || (indexOf = indexOf(str, 0)) < 0) {
            return this;
        }
        replaceImpl(indexOf, indexOf + length, length, str2, str2 != null ? str2.length() : 0);
        return this;
    }

    public StrBuilder appendln(StringBuffer stringBuffer) {
        return append(stringBuffer).appendNewLine();
    }

    public boolean contains(StrMatcher strMatcher) {
        return indexOf(strMatcher, 0) >= 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof StrBuilder) && equals((StrBuilder) obj);
    }

    public void getChars(int i2, int i7, char[] cArr, int i8) {
        if (i2 >= 0) {
            if (i7 < 0 || i7 > length()) {
                throw new StringIndexOutOfBoundsException(i7);
            }
            if (i2 <= i7) {
                System.arraycopy(this.buffer, i2, cArr, i8, i7 - i2);
                return;
            }
            throw new StringIndexOutOfBoundsException("end < start");
        }
        throw new StringIndexOutOfBoundsException(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        r9 = r9 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int lastIndexOf(java.lang.String r8, int r9) {
        /*
            r7 = this;
            int r0 = r7.size
            r1 = 1
            if (r9 < r0) goto L7
            int r9 = r0 + (-1)
        L7:
            r0 = -1
            if (r8 == 0) goto L40
            if (r9 >= 0) goto Ld
            goto L40
        Ld:
            int r2 = r8.length()
            if (r2 <= 0) goto L3d
            int r3 = r7.size
            if (r2 > r3) goto L3d
            r3 = 0
            if (r2 != r1) goto L23
            char r8 = r8.charAt(r3)
            int r8 = r7.lastIndexOf(r8, r9)
            return r8
        L23:
            int r9 = r9 - r2
            int r9 = r9 + r1
        L25:
            if (r9 < 0) goto L40
            r1 = r3
        L28:
            if (r1 >= r2) goto L3c
            char r4 = r8.charAt(r1)
            char[] r5 = r7.buffer
            int r6 = r9 + r1
            char r5 = r5[r6]
            if (r4 == r5) goto L39
            int r9 = r9 + (-1)
            goto L25
        L39:
            int r1 = r1 + 1
            goto L28
        L3c:
            return r9
        L3d:
            if (r2 != 0) goto L40
            return r9
        L40:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.text.StrBuilder.lastIndexOf(java.lang.String, int):int");
    }

    public char[] toCharArray(int i2, int i7) {
        int validateRange = validateRange(i2, i7) - i2;
        if (validateRange == 0) {
            return ArrayUtils.EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[validateRange];
        System.arraycopy(this.buffer, i2, cArr, 0, validateRange);
        return cArr;
    }

    private StrBuilder replaceImpl(StrMatcher strMatcher, String str, int i2, int i7, int i8) {
        String str2;
        if (strMatcher != null && this.size != 0) {
            int length = str == null ? 0 : str.length();
            int i9 = i2;
            while (i9 < i7 && i8 != 0) {
                int isMatch = strMatcher.isMatch(this.buffer, i9, i2, i7);
                if (isMatch > 0) {
                    str2 = str;
                    replaceImpl(i9, i9 + isMatch, isMatch, str2, length);
                    i7 = (i7 - isMatch) + length;
                    i9 = (i9 + length) - 1;
                    if (i8 > 0) {
                        i8--;
                    }
                } else {
                    str2 = str;
                }
                i9++;
                str = str2;
            }
        }
        return this;
    }

    public StrBuilder appendAll(Iterator<?> it) {
        if (it != null) {
            while (it.hasNext()) {
                append(it.next());
            }
        }
        return this;
    }

    public StrBuilder appendSeparator(char c7, char c8) {
        if (size() > 0) {
            append(c7);
            return this;
        }
        append(c8);
        return this;
    }

    public StrBuilder appendln(StringBuilder sb) {
        return append(sb).appendNewLine();
    }

    public StrBuilder deleteAll(String str) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            int indexOf = indexOf(str, 0);
            while (indexOf >= 0) {
                deleteImpl(indexOf, indexOf + length, length);
                indexOf = indexOf(str, indexOf);
            }
        }
        return this;
    }

    public int indexOf(String str) {
        return indexOf(str, 0);
    }

    public StrBuilder appendWithSeparators(Iterable<?> iterable, String str) {
        if (iterable != null) {
            String objects = Objects.toString(str, "");
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                append(it.next());
                if (it.hasNext()) {
                    append(objects);
                }
            }
        }
        return this;
    }

    public StrBuilder appendln(StringBuilder sb, int i2, int i7) {
        return append(sb, i2, i7).appendNewLine();
    }

    public StrBuilder deleteFirst(StrMatcher strMatcher) {
        return replace(strMatcher, null, 0, this.size, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0037, code lost:
    
        r10 = r10 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int indexOf(java.lang.String r9, int r10) {
        /*
            r8 = this;
            r0 = 0
            if (r10 >= 0) goto L4
            r10 = r0
        L4:
            r1 = -1
            if (r9 == 0) goto L3e
            int r2 = r8.size
            if (r10 < r2) goto Lc
            goto L3e
        Lc:
            int r2 = r9.length()
            r3 = 1
            if (r2 != r3) goto L1c
            char r9 = r9.charAt(r0)
            int r9 = r8.indexOf(r9, r10)
            return r9
        L1c:
            if (r2 != 0) goto L1f
            return r10
        L1f:
            int r4 = r8.size
            if (r2 <= r4) goto L24
            return r1
        L24:
            char[] r5 = r8.buffer
            int r4 = r4 - r2
            int r4 = r4 + r3
        L28:
            if (r10 >= r4) goto L3e
            r3 = r0
        L2b:
            if (r3 >= r2) goto L3d
            char r6 = r9.charAt(r3)
            int r7 = r10 + r3
            char r7 = r5[r7]
            if (r6 == r7) goto L3a
            int r10 = r10 + 1
            goto L28
        L3a:
            int r3 = r3 + 1
            goto L2b
        L3d:
            return r10
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.text.StrBuilder.indexOf(java.lang.String, int):int");
    }

    @Override // java.lang.Appendable
    public StrBuilder append(CharSequence charSequence) {
        if (charSequence == null) {
            return appendNull();
        }
        if (charSequence instanceof StrBuilder) {
            return append((StrBuilder) charSequence);
        }
        if (charSequence instanceof StringBuilder) {
            return append((StringBuilder) charSequence);
        }
        if (charSequence instanceof StringBuffer) {
            return append((StringBuffer) charSequence);
        }
        if (charSequence instanceof CharBuffer) {
            return append((CharBuffer) charSequence);
        }
        return append(charSequence.toString());
    }

    public StrBuilder appendln(StringBuffer stringBuffer, int i2, int i7) {
        return append(stringBuffer, i2, i7).appendNewLine();
    }

    public StrBuilder replaceFirst(StrMatcher strMatcher, String str) {
        return replace(strMatcher, str, 0, this.size, 1);
    }

    public StrBuilder appendFixedWidthPadLeft(int i2, int i7, char c7) {
        return appendFixedWidthPadLeft(String.valueOf(i2), i7, c7);
    }

    public StrBuilder appendFixedWidthPadRight(int i2, int i7, char c7) {
        return appendFixedWidthPadRight(String.valueOf(i2), i7, c7);
    }

    public StrBuilder appendSeparator(String str, int i2) {
        if (str != null && i2 > 0) {
            append(str);
        }
        return this;
    }

    public StrBuilder appendln(StrBuilder strBuilder) {
        return append(strBuilder).appendNewLine();
    }

    public StrBuilder replaceAll(StrMatcher strMatcher, String str) {
        return replace(strMatcher, str, 0, this.size, -1);
    }

    public StrBuilder appendSeparator(char c7, int i2) {
        if (i2 > 0) {
            append(c7);
        }
        return this;
    }

    public StrBuilder appendln(StrBuilder strBuilder, int i2, int i7) {
        return append(strBuilder, i2, i7).appendNewLine();
    }

    public StrBuilder deleteAll(StrMatcher strMatcher) {
        return replace(strMatcher, null, 0, this.size, -1);
    }

    public int lastIndexOf(StrMatcher strMatcher) {
        return lastIndexOf(strMatcher, this.size);
    }

    public StrBuilder appendln(char[] cArr) {
        return append(cArr).appendNewLine();
    }

    public StrBuilder insert(int i2, char[] cArr) {
        validateIndex(i2);
        if (cArr == null) {
            return insert(i2, this.nullText);
        }
        int length = cArr.length;
        if (length > 0) {
            ensureCapacity(this.size + length);
            char[] cArr2 = this.buffer;
            System.arraycopy(cArr2, i2, cArr2, i2 + length, this.size - i2);
            System.arraycopy(cArr, 0, this.buffer, i2, length);
            this.size += length;
        }
        return this;
    }

    public int lastIndexOf(StrMatcher strMatcher, int i2) {
        int i7 = this.size;
        if (i2 >= i7) {
            i2 = i7 - 1;
        }
        if (strMatcher != null && i2 >= 0) {
            char[] cArr = this.buffer;
            int i8 = i2 + 1;
            while (i2 >= 0) {
                if (strMatcher.isMatch(cArr, i2, 0, i8) > 0) {
                    return i2;
                }
                i2--;
            }
        }
        return -1;
    }

    public StrBuilder appendln(char[] cArr, int i2, int i7) {
        return append(cArr, i2, i7).appendNewLine();
    }

    public StrBuilder appendWithSeparators(Iterator<?> it, String str) {
        if (it != null) {
            String objects = Objects.toString(str, "");
            while (it.hasNext()) {
                append(it.next());
                if (it.hasNext()) {
                    append(objects);
                }
            }
        }
        return this;
    }

    public StrBuilder appendln(boolean z6) {
        return append(z6).appendNewLine();
    }

    public int indexOf(StrMatcher strMatcher) {
        return indexOf(strMatcher, 0);
    }

    public StrBuilder appendln(char c7) {
        return append(c7).appendNewLine();
    }

    public int indexOf(StrMatcher strMatcher, int i2) {
        int i7;
        if (i2 < 0) {
            i2 = 0;
        }
        if (strMatcher != null && i2 < (i7 = this.size)) {
            char[] cArr = this.buffer;
            for (int i8 = i2; i8 < i7; i8++) {
                if (strMatcher.isMatch(cArr, i8, i2, i7) > 0) {
                    return i8;
                }
            }
        }
        return -1;
    }

    public StrBuilder appendln(int i2) {
        return append(i2).appendNewLine();
    }

    public StrBuilder appendln(long j7) {
        return append(j7).appendNewLine();
    }

    public StrBuilder appendln(float f3) {
        return append(f3).appendNewLine();
    }

    @Override // java.lang.Appendable
    public StrBuilder append(CharSequence charSequence, int i2, int i7) {
        if (charSequence == null) {
            return appendNull();
        }
        return append(charSequence.toString(), i2, i7);
    }

    public StrBuilder appendln(double d7) {
        return append(d7).appendNewLine();
    }

    public StrBuilder insert(int i2, char[] cArr, int i7, int i8) {
        validateIndex(i2);
        if (cArr == null) {
            return insert(i2, this.nullText);
        }
        if (i7 >= 0 && i7 <= cArr.length) {
            if (i8 < 0 || i7 + i8 > cArr.length) {
                throw new StringIndexOutOfBoundsException(i.f(i8, "Invalid length: "));
            }
            if (i8 > 0) {
                ensureCapacity(this.size + i8);
                char[] cArr2 = this.buffer;
                System.arraycopy(cArr2, i2, cArr2, i2 + i8, this.size - i2);
                System.arraycopy(cArr, i7, this.buffer, i2, i8);
                this.size += i8;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException(i.f(i7, "Invalid offset: "));
    }

    public StrBuilder append(String str) {
        if (str == null) {
            return appendNull();
        }
        int length = str.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            str.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(String str, int i2, int i7) {
        int i8;
        if (str == null) {
            return appendNull();
        }
        if (i2 >= 0 && i2 <= str.length()) {
            if (i7 < 0 || (i8 = i2 + i7) > str.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i7 > 0) {
                int length = length();
                ensureCapacity(length + i7);
                str.getChars(i2, i8, this.buffer, length);
                this.size += i7;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder append(String str, Object... objArr) {
        return append(String.format(str, objArr));
    }

    public StrBuilder append(CharBuffer charBuffer) {
        if (charBuffer == null) {
            return appendNull();
        }
        if (charBuffer.hasArray()) {
            int remaining = charBuffer.remaining();
            int length = length();
            ensureCapacity(length + remaining);
            System.arraycopy(charBuffer.array(), charBuffer.position() + charBuffer.arrayOffset(), this.buffer, length, remaining);
            this.size += remaining;
            return this;
        }
        append(charBuffer.toString());
        return this;
    }

    public StrBuilder insert(int i2, boolean z6) {
        validateIndex(i2);
        if (z6) {
            ensureCapacity(this.size + 4);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i2, cArr, i2 + 4, this.size - i2);
            char[] cArr2 = this.buffer;
            cArr2[i2] = 't';
            cArr2[i2 + 1] = 'r';
            cArr2[i2 + 2] = 'u';
            cArr2[i2 + 3] = 'e';
            this.size += 4;
            return this;
        }
        ensureCapacity(this.size + 5);
        char[] cArr3 = this.buffer;
        System.arraycopy(cArr3, i2, cArr3, i2 + 5, this.size - i2);
        char[] cArr4 = this.buffer;
        cArr4[i2] = 'f';
        cArr4[i2 + 1] = 'a';
        cArr4[i2 + 2] = 'l';
        cArr4[i2 + 3] = 's';
        cArr4[i2 + 4] = 'e';
        this.size += 5;
        return this;
    }

    public StrBuilder append(CharBuffer charBuffer, int i2, int i7) {
        if (charBuffer == null) {
            return appendNull();
        }
        if (charBuffer.hasArray()) {
            int remaining = charBuffer.remaining();
            if (i2 < 0 || i2 > remaining) {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
            if (i7 >= 0 && i2 + i7 <= remaining) {
                int length = length();
                ensureCapacity(length + i7);
                System.arraycopy(charBuffer.array(), charBuffer.position() + charBuffer.arrayOffset() + i2, this.buffer, length, i7);
                this.size += i7;
                return this;
            }
            throw new StringIndexOutOfBoundsException("length must be valid");
        }
        append(charBuffer.toString(), i2, i7);
        return this;
    }

    public StrBuilder append(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return appendNull();
        }
        int length = stringBuffer.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            stringBuffer.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public StrBuilder insert(int i2, char c7) {
        validateIndex(i2);
        ensureCapacity(this.size + 1);
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i2, cArr, i2 + 1, this.size - i2);
        this.buffer[i2] = c7;
        this.size++;
        return this;
    }

    public StrBuilder append(StringBuffer stringBuffer, int i2, int i7) {
        int i8;
        if (stringBuffer == null) {
            return appendNull();
        }
        if (i2 >= 0 && i2 <= stringBuffer.length()) {
            if (i7 < 0 || (i8 = i2 + i7) > stringBuffer.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i7 > 0) {
                int length = length();
                ensureCapacity(length + i7);
                stringBuffer.getChars(i2, i8, this.buffer, length);
                this.size += i7;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder insert(int i2, int i7) {
        return insert(i2, String.valueOf(i7));
    }

    public StrBuilder insert(int i2, long j7) {
        return insert(i2, String.valueOf(j7));
    }

    public StrBuilder insert(int i2, float f3) {
        return insert(i2, String.valueOf(f3));
    }

    public StrBuilder insert(int i2, double d7) {
        return insert(i2, String.valueOf(d7));
    }

    public StrBuilder append(StringBuilder sb) {
        if (sb == null) {
            return appendNull();
        }
        int length = sb.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            sb.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(StringBuilder sb, int i2, int i7) {
        int i8;
        if (sb == null) {
            return appendNull();
        }
        if (i2 >= 0 && i2 <= sb.length()) {
            if (i7 < 0 || (i8 = i2 + i7) > sb.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i7 > 0) {
                int length = length();
                ensureCapacity(length + i7);
                sb.getChars(i2, i8, this.buffer, length);
                this.size += i7;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder append(StrBuilder strBuilder) {
        if (strBuilder == null) {
            return appendNull();
        }
        int length = strBuilder.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            System.arraycopy(strBuilder.buffer, 0, this.buffer, length2, length);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(StrBuilder strBuilder, int i2, int i7) {
        int i8;
        if (strBuilder == null) {
            return appendNull();
        }
        if (i2 >= 0 && i2 <= strBuilder.length()) {
            if (i7 < 0 || (i8 = i2 + i7) > strBuilder.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i7 > 0) {
                int length = length();
                ensureCapacity(length + i7);
                strBuilder.getChars(i2, i8, this.buffer, length);
                this.size += i7;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder append(char[] cArr) {
        if (cArr == null) {
            return appendNull();
        }
        int length = cArr.length;
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            System.arraycopy(cArr, 0, this.buffer, length2, length);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(char[] cArr, int i2, int i7) {
        if (cArr == null) {
            return appendNull();
        }
        if (i2 >= 0 && i2 <= cArr.length) {
            if (i7 < 0 || i2 + i7 > cArr.length) {
                throw new StringIndexOutOfBoundsException(i.f(i7, "Invalid length: "));
            }
            if (i7 > 0) {
                int length = length();
                ensureCapacity(length + i7);
                System.arraycopy(cArr, i2, this.buffer, length, i7);
                this.size += i7;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException(i.f(i7, "Invalid startIndex: "));
    }

    public StrBuilder append(boolean z6) {
        if (z6) {
            ensureCapacity(this.size + 4);
            char[] cArr = this.buffer;
            int i2 = this.size;
            int i7 = i2 + 1;
            this.size = i7;
            cArr[i2] = 't';
            int i8 = i2 + 2;
            this.size = i8;
            cArr[i7] = 'r';
            int i9 = i2 + 3;
            this.size = i9;
            cArr[i8] = 'u';
            this.size = i2 + 4;
            cArr[i9] = 'e';
            return this;
        }
        ensureCapacity(this.size + 5);
        char[] cArr2 = this.buffer;
        int i10 = this.size;
        int i11 = i10 + 1;
        this.size = i11;
        cArr2[i10] = 'f';
        int i12 = i10 + 2;
        this.size = i12;
        cArr2[i11] = 'a';
        int i13 = i10 + 3;
        this.size = i13;
        cArr2[i12] = 'l';
        int i14 = i10 + 4;
        this.size = i14;
        cArr2[i13] = 's';
        this.size = i10 + 5;
        cArr2[i14] = 'e';
        return this;
    }

    @Override // java.lang.Appendable
    public StrBuilder append(char c7) {
        ensureCapacity(length() + 1);
        char[] cArr = this.buffer;
        int i2 = this.size;
        this.size = i2 + 1;
        cArr[i2] = c7;
        return this;
    }

    public StrBuilder append(int i2) {
        return append(String.valueOf(i2));
    }

    public StrBuilder append(long j7) {
        return append(String.valueOf(j7));
    }

    public StrBuilder append(float f3) {
        return append(String.valueOf(f3));
    }

    public StrBuilder append(double d7) {
        return append(String.valueOf(d7));
    }
}
