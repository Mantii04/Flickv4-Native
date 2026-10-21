package com.fasterxml.jackson.core;

import A.i;
import b.c;
import com.fasterxml.jackson.core.io.NumberInput;
import com.google.firebase.sessions.settings.RemoteSettings;

/* loaded from: classes.dex */
public class JsonPointer {
    protected static final JsonPointer EMPTY = new JsonPointer();
    public static final char SEPARATOR = '/';
    protected final String _asString;
    protected volatile JsonPointer _head;
    protected final int _matchingElementIndex;
    protected final String _matchingPropertyName;
    protected final JsonPointer _nextSegment;

    public JsonPointer() {
        this._nextSegment = null;
        this._matchingPropertyName = "";
        this._matchingElementIndex = -1;
        this._asString = "";
    }

    private static void _appendEscape(StringBuilder sb, char c7) {
        if (c7 == '0') {
            c7 = '~';
        } else if (c7 == '1') {
            c7 = SEPARATOR;
        } else {
            sb.append('~');
        }
        sb.append(c7);
    }

    private static void _appendEscaped(StringBuilder sb, String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '/') {
                sb.append("~1");
            } else if (charAt == '~') {
                sb.append("~0");
            } else {
                sb.append(charAt);
            }
        }
    }

    private static String _fullPath(JsonPointer jsonPointer, String str) {
        if (jsonPointer == null) {
            StringBuilder sb = new StringBuilder(str.length() + 1);
            sb.append(SEPARATOR);
            _appendEscaped(sb, str);
            return sb.toString();
        }
        String str2 = jsonPointer._asString;
        StringBuilder sb2 = new StringBuilder(str2.length() + str.length() + 1);
        sb2.append(SEPARATOR);
        _appendEscaped(sb2, str);
        sb2.append(str2);
        return sb2.toString();
    }

    private static final int _parseIndex(String str) {
        int length = str.length();
        if (length == 0 || length > 10) {
            return -1;
        }
        char charAt = str.charAt(0);
        if (charAt <= '0') {
            return (length == 1 && charAt == '0') ? 0 : -1;
        }
        if (charAt > '9') {
            return -1;
        }
        for (int i2 = 1; i2 < length; i2++) {
            char charAt2 = str.charAt(i2);
            if (charAt2 > '9' || charAt2 < '0') {
                return -1;
            }
        }
        if (length != 10 || NumberInput.parseLong(str) <= 2147483647L) {
            return NumberInput.parseInt(str);
        }
        return -1;
    }

    public static JsonPointer _parseQuotedTail(String str, int i2) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(Math.max(16, length));
        if (i2 > 2) {
            sb.append((CharSequence) str, 1, i2 - 1);
        }
        int i7 = i2 + 1;
        _appendEscape(sb, str.charAt(i2));
        while (i7 < length) {
            char charAt = str.charAt(i7);
            if (charAt == '/') {
                return new JsonPointer(str, sb.toString(), _parseTail(str.substring(i7)));
            }
            int i8 = i7 + 1;
            if (charAt != '~' || i8 >= length) {
                sb.append(charAt);
                i7 = i8;
            } else {
                i7 += 2;
                _appendEscape(sb, str.charAt(i8));
            }
        }
        return new JsonPointer(str, sb.toString(), EMPTY);
    }

    public static JsonPointer _parseTail(String str) {
        int length = str.length();
        int i2 = 1;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == '/') {
                return new JsonPointer(str, str.substring(1, i2), _parseTail(str.substring(i2)));
            }
            i2++;
            if (charAt == '~' && i2 < length) {
                return _parseQuotedTail(str, i2);
            }
        }
        return new JsonPointer(str, str.substring(1), EMPTY);
    }

    public static JsonPointer compile(String str) throws IllegalArgumentException {
        if (str == null || str.length() == 0) {
            return EMPTY;
        }
        if (str.charAt(0) == '/') {
            return _parseTail(str);
        }
        throw new IllegalArgumentException(i.l("Invalid input: JSON Pointer expression must start with '/': \"", str, "\""));
    }

    public static JsonPointer empty() {
        return EMPTY;
    }

    public static JsonPointer forPath(JsonStreamContext jsonStreamContext, boolean z6) {
        if (jsonStreamContext == null) {
            return EMPTY;
        }
        if (!jsonStreamContext.hasPathSegment() && (!z6 || !jsonStreamContext.inRoot() || !jsonStreamContext.hasCurrentIndex())) {
            jsonStreamContext = jsonStreamContext.getParent();
        }
        JsonPointer jsonPointer = null;
        while (jsonStreamContext != null) {
            if (jsonStreamContext.inObject()) {
                String currentName = jsonStreamContext.getCurrentName();
                if (currentName == null) {
                    currentName = "";
                }
                jsonPointer = new JsonPointer(_fullPath(jsonPointer, currentName), currentName, jsonPointer);
            } else if (jsonStreamContext.inArray() || z6) {
                int currentIndex = jsonStreamContext.getCurrentIndex();
                String valueOf = String.valueOf(currentIndex);
                jsonPointer = new JsonPointer(_fullPath(jsonPointer, valueOf), valueOf, currentIndex, jsonPointer);
            }
            jsonStreamContext = jsonStreamContext.getParent();
        }
        return jsonPointer == null ? EMPTY : jsonPointer;
    }

    public static JsonPointer valueOf(String str) {
        return compile(str);
    }

    public JsonPointer _constructHead() {
        JsonPointer last = last();
        if (last == this) {
            return EMPTY;
        }
        int length = last._asString.length();
        return new JsonPointer(i.d(length, 0, this._asString), this._matchingPropertyName, this._matchingElementIndex, this._nextSegment._constructHead(length, last));
    }

    public JsonPointer append(JsonPointer jsonPointer) {
        JsonPointer jsonPointer2 = EMPTY;
        if (this == jsonPointer2) {
            return jsonPointer;
        }
        if (jsonPointer == jsonPointer2) {
            return this;
        }
        String str = this._asString;
        if (str.endsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
            str = i.d(1, 0, str);
        }
        StringBuilder o6 = c.o(str);
        o6.append(jsonPointer._asString);
        return compile(o6.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof JsonPointer)) {
            return this._asString.equals(((JsonPointer) obj)._asString);
        }
        return false;
    }

    public int getMatchingIndex() {
        return this._matchingElementIndex;
    }

    public String getMatchingProperty() {
        return this._matchingPropertyName;
    }

    public int hashCode() {
        return this._asString.hashCode();
    }

    public JsonPointer head() {
        JsonPointer jsonPointer = this._head;
        if (jsonPointer == null) {
            if (this != EMPTY) {
                jsonPointer = _constructHead();
            }
            this._head = jsonPointer;
        }
        return jsonPointer;
    }

    public JsonPointer last() {
        if (this == EMPTY) {
            return null;
        }
        JsonPointer jsonPointer = this;
        while (true) {
            JsonPointer jsonPointer2 = jsonPointer._nextSegment;
            if (jsonPointer2 == EMPTY) {
                return jsonPointer;
            }
            jsonPointer = jsonPointer2;
        }
    }

    public JsonPointer matchElement(int i2) {
        if (i2 != this._matchingElementIndex || i2 < 0) {
            return null;
        }
        return this._nextSegment;
    }

    public JsonPointer matchProperty(String str) {
        if (this._nextSegment == null || !this._matchingPropertyName.equals(str)) {
            return null;
        }
        return this._nextSegment;
    }

    public boolean matches() {
        return this._nextSegment == null;
    }

    public boolean matchesElement(int i2) {
        return i2 == this._matchingElementIndex && i2 >= 0;
    }

    public boolean matchesProperty(String str) {
        return this._nextSegment != null && this._matchingPropertyName.equals(str);
    }

    public boolean mayMatchElement() {
        return this._matchingElementIndex >= 0;
    }

    public boolean mayMatchProperty() {
        return this._matchingPropertyName != null;
    }

    public JsonPointer tail() {
        return this._nextSegment;
    }

    public String toString() {
        return this._asString;
    }

    public JsonPointer(String str, String str2, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = _parseIndex(str2);
    }

    public JsonPointer(String str, String str2, int i2, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = i2;
    }

    public JsonPointer _constructHead(int i2, JsonPointer jsonPointer) {
        if (this == jsonPointer) {
            return EMPTY;
        }
        return new JsonPointer(i.d(i2, 0, this._asString), this._matchingPropertyName, this._matchingElementIndex, this._nextSegment._constructHead(i2, jsonPointer));
    }
}
