package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.StringUtils;

@Deprecated
/* loaded from: classes2.dex */
public class StrSubstitutor {
    public static final char DEFAULT_ESCAPE = '$';
    public static final StrMatcher DEFAULT_PREFIX = StrMatcher.stringMatcher("${");
    public static final StrMatcher DEFAULT_SUFFIX = StrMatcher.stringMatcher("}");
    public static final StrMatcher DEFAULT_VALUE_DELIMITER = StrMatcher.stringMatcher(":-");
    private boolean enableSubstitutionInVariables;
    private char escapeChar;
    private StrMatcher prefixMatcher;
    private boolean preserveEscapes;
    private StrMatcher suffixMatcher;
    private StrMatcher valueDelimiterMatcher;
    private StrLookup<?> variableResolver;

    public StrSubstitutor() {
        this((StrLookup<?>) null, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    private void checkCyclicSubstitution(String str, List<String> list) {
        if (list.contains(str)) {
            StrBuilder strBuilder = new StrBuilder(256);
            strBuilder.append("Infinite loop in property interpolation of ");
            strBuilder.append(list.remove(0));
            strBuilder.append(": ");
            strBuilder.appendWithSeparators(list, "->");
            throw new IllegalStateException(strBuilder.toString());
        }
    }

    public static <V> String replace(Object obj, Map<String, V> map) {
        return new StrSubstitutor(map).replace(obj);
    }

    public static String replaceSystemProperties(Object obj) {
        return new StrSubstitutor(StrLookup.systemPropertiesLookup()).replace(obj);
    }

    public char getEscapeChar() {
        return this.escapeChar;
    }

    public StrMatcher getValueDelimiterMatcher() {
        return this.valueDelimiterMatcher;
    }

    public StrMatcher getVariablePrefixMatcher() {
        return this.prefixMatcher;
    }

    public StrLookup<?> getVariableResolver() {
        return this.variableResolver;
    }

    public StrMatcher getVariableSuffixMatcher() {
        return this.suffixMatcher;
    }

    public boolean isEnableSubstitutionInVariables() {
        return this.enableSubstitutionInVariables;
    }

    public boolean isPreserveEscapes() {
        return this.preserveEscapes;
    }

    public boolean replaceIn(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return false;
        }
        return replaceIn(stringBuffer, 0, stringBuffer.length());
    }

    public String resolveVariable(String str, StrBuilder strBuilder, int i2, int i7) {
        StrLookup<?> variableResolver = getVariableResolver();
        if (variableResolver == null) {
            return null;
        }
        return variableResolver.lookup(str);
    }

    public void setEnableSubstitutionInVariables(boolean z6) {
        this.enableSubstitutionInVariables = z6;
    }

    public void setEscapeChar(char c7) {
        this.escapeChar = c7;
    }

    public void setPreserveEscapes(boolean z6) {
        this.preserveEscapes = z6;
    }

    public StrSubstitutor setValueDelimiter(char c7) {
        return setValueDelimiterMatcher(StrMatcher.charMatcher(c7));
    }

    public StrSubstitutor setValueDelimiterMatcher(StrMatcher strMatcher) {
        this.valueDelimiterMatcher = strMatcher;
        return this;
    }

    public StrSubstitutor setVariablePrefix(char c7) {
        return setVariablePrefixMatcher(StrMatcher.charMatcher(c7));
    }

    public StrSubstitutor setVariablePrefixMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            throw new IllegalArgumentException("Variable prefix matcher must not be null!");
        }
        this.prefixMatcher = strMatcher;
        return this;
    }

    public void setVariableResolver(StrLookup<?> strLookup) {
        this.variableResolver = strLookup;
    }

    public StrSubstitutor setVariableSuffix(char c7) {
        return setVariableSuffixMatcher(StrMatcher.charMatcher(c7));
    }

    public StrSubstitutor setVariableSuffixMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            throw new IllegalArgumentException("Variable suffix matcher must not be null!");
        }
        this.suffixMatcher = strMatcher;
        return this;
    }

    public boolean substitute(StrBuilder strBuilder, int i2, int i7) {
        return substitute(strBuilder, i2, i7, null) > 0;
    }

    public <V> StrSubstitutor(Map<String, V> map) {
        this((StrLookup<?>) StrLookup.mapLookup(map), DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public static <V> String replace(Object obj, Map<String, V> map, String str, String str2) {
        return new StrSubstitutor(map, str, str2).replace(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r27v0, types: [org.apache.commons.lang3.text.StrSubstitutor] */
    private int substitute(StrBuilder strBuilder, int i2, int i7, List<String> list) {
        StrMatcher strMatcher;
        StrMatcher strMatcher2;
        char c7;
        boolean z6;
        int i8;
        String str;
        int isMatch;
        StrMatcher variablePrefixMatcher = getVariablePrefixMatcher();
        StrMatcher variableSuffixMatcher = getVariableSuffixMatcher();
        char escapeChar = getEscapeChar();
        StrMatcher valueDelimiterMatcher = getValueDelimiterMatcher();
        boolean isEnableSubstitutionInVariables = isEnableSubstitutionInVariables();
        boolean z7 = list == null;
        int i9 = i2;
        int i10 = i2 + i7;
        int i11 = 0;
        int i12 = 0;
        char[] cArr = strBuilder.buffer;
        ?? r12 = list;
        while (i9 < i10) {
            int isMatch2 = variablePrefixMatcher.isMatch(cArr, i9, i2, i10);
            if (isMatch2 != 0) {
                if (i9 > i2) {
                    i8 = 1;
                    int i13 = i9 - 1;
                    if (cArr[i13] == escapeChar) {
                        if (this.preserveEscapes) {
                            i9++;
                        } else {
                            strBuilder.deleteCharAt(i13);
                            i11--;
                            i10--;
                            strMatcher = variablePrefixMatcher;
                            strMatcher2 = variableSuffixMatcher;
                            c7 = escapeChar;
                            z6 = isEnableSubstitutionInVariables;
                            cArr = strBuilder.buffer;
                            i12 = 1;
                            r12 = r12;
                        }
                    }
                } else {
                    i8 = 1;
                }
                int i14 = i9 + isMatch2;
                int i15 = i14;
                int i16 = 0;
                while (true) {
                    if (i15 >= i10) {
                        strMatcher = variablePrefixMatcher;
                        strMatcher2 = variableSuffixMatcher;
                        c7 = escapeChar;
                        z6 = isEnableSubstitutionInVariables;
                        i9 = i15;
                        r12 = r12;
                        break;
                    }
                    if (!isEnableSubstitutionInVariables || (isMatch = variablePrefixMatcher.isMatch(cArr, i15, i2, i10)) == 0) {
                        int isMatch3 = variableSuffixMatcher.isMatch(cArr, i15, i2, i10);
                        if (isMatch3 == 0) {
                            i15++;
                        } else if (i16 == 0) {
                            strMatcher2 = variableSuffixMatcher;
                            c7 = escapeChar;
                            String str2 = new String(cArr, i14, (i15 - i9) - isMatch2);
                            if (isEnableSubstitutionInVariables) {
                                StrBuilder strBuilder2 = new StrBuilder(str2);
                                substitute(strBuilder2, 0, strBuilder2.length());
                                str2 = strBuilder2.toString();
                            }
                            int i17 = i15 + isMatch3;
                            if (valueDelimiterMatcher != null) {
                                char[] charArray = str2.toCharArray();
                                z6 = isEnableSubstitutionInVariables;
                                int i18 = 0;
                                while (i18 < charArray.length && (z6 || variablePrefixMatcher.isMatch(charArray, i18, i18, charArray.length) == 0)) {
                                    int isMatch4 = valueDelimiterMatcher.isMatch(charArray, i18);
                                    if (isMatch4 != 0) {
                                        strMatcher = variablePrefixMatcher;
                                        String substring = str2.substring(0, i18);
                                        str = str2.substring(i18 + isMatch4);
                                        str2 = substring;
                                        break;
                                    }
                                    i18++;
                                    variablePrefixMatcher = variablePrefixMatcher;
                                }
                                strMatcher = variablePrefixMatcher;
                            } else {
                                strMatcher = variablePrefixMatcher;
                                z6 = isEnableSubstitutionInVariables;
                            }
                            str = null;
                            if (r12 == 0) {
                                r12 = new ArrayList();
                                r12.add(new String(cArr, i2, i7));
                            }
                            checkCyclicSubstitution(str2, r12);
                            r12.add(str2);
                            String resolveVariable = resolveVariable(str2, strBuilder, i9, i17);
                            if (resolveVariable != null) {
                                str = resolveVariable;
                            }
                            if (str != null) {
                                int length = str.length();
                                strBuilder.replace(i9, i17, str);
                                int substitute = (substitute(strBuilder, i9, length, r12) + length) - (i17 - i9);
                                i17 += substitute;
                                i10 += substitute;
                                i11 += substitute;
                                cArr = strBuilder.buffer;
                                i12 = i8;
                            }
                            i9 = i17;
                            r12.remove(r12.size() - 1);
                            r12 = r12;
                        } else {
                            i16--;
                            i15 += isMatch3;
                            variablePrefixMatcher = variablePrefixMatcher;
                        }
                    } else {
                        i16++;
                        i15 += isMatch;
                    }
                }
            } else {
                i9++;
                strMatcher = variablePrefixMatcher;
                strMatcher2 = variableSuffixMatcher;
                c7 = escapeChar;
                z6 = isEnableSubstitutionInVariables;
                r12 = r12;
            }
            variableSuffixMatcher = strMatcher2;
            escapeChar = c7;
            isEnableSubstitutionInVariables = z6;
            variablePrefixMatcher = strMatcher;
        }
        return z7 ? i12 : i11;
    }

    public boolean replaceIn(StringBuffer stringBuffer, int i2, int i7) {
        if (stringBuffer == null) {
            return false;
        }
        StrBuilder append = new StrBuilder(i7).append(stringBuffer, i2, i7);
        if (!substitute(append, 0, i7)) {
            return false;
        }
        stringBuffer.replace(i2, i7 + i2, append.toString());
        return true;
    }

    public StrSubstitutor setValueDelimiter(String str) {
        if (!StringUtils.isEmpty(str)) {
            return setValueDelimiterMatcher(StrMatcher.stringMatcher(str));
        }
        setValueDelimiterMatcher(null);
        return this;
    }

    public StrSubstitutor setVariablePrefix(String str) {
        if (str != null) {
            return setVariablePrefixMatcher(StrMatcher.stringMatcher(str));
        }
        throw new IllegalArgumentException("Variable prefix must not be null!");
    }

    public StrSubstitutor setVariableSuffix(String str) {
        if (str != null) {
            return setVariableSuffixMatcher(StrMatcher.stringMatcher(str));
        }
        throw new IllegalArgumentException("Variable suffix must not be null!");
    }

    public <V> StrSubstitutor(Map<String, V> map, String str, String str2) {
        this((StrLookup<?>) StrLookup.mapLookup(map), str, str2, '$');
    }

    public static String replace(Object obj, Properties properties) {
        if (properties == null) {
            return obj.toString();
        }
        HashMap hashMap = new HashMap();
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            hashMap.put(str, properties.getProperty(str));
        }
        return replace(obj, hashMap);
    }

    public <V> StrSubstitutor(Map<String, V> map, String str, String str2, char c7) {
        this((StrLookup<?>) StrLookup.mapLookup(map), str, str2, c7);
    }

    public <V> StrSubstitutor(Map<String, V> map, String str, String str2, char c7, String str3) {
        this((StrLookup<?>) StrLookup.mapLookup(map), str, str2, c7, str3);
    }

    public boolean replaceIn(StringBuilder sb) {
        if (sb == null) {
            return false;
        }
        return replaceIn(sb, 0, sb.length());
    }

    public StrSubstitutor(StrLookup<?> strLookup) {
        this(strLookup, DEFAULT_PREFIX, DEFAULT_SUFFIX, '$');
    }

    public boolean replaceIn(StringBuilder sb, int i2, int i7) {
        if (sb == null) {
            return false;
        }
        StrBuilder append = new StrBuilder(i7).append(sb, i2, i7);
        if (!substitute(append, 0, i7)) {
            return false;
        }
        sb.replace(i2, i7 + i2, append.toString());
        return true;
    }

    public StrSubstitutor(StrLookup<?> strLookup, String str, String str2, char c7) {
        this.preserveEscapes = false;
        setVariableResolver(strLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c7);
        setValueDelimiterMatcher(DEFAULT_VALUE_DELIMITER);
    }

    public boolean replaceIn(StrBuilder strBuilder) {
        if (strBuilder == null) {
            return false;
        }
        return substitute(strBuilder, 0, strBuilder.length());
    }

    public boolean replaceIn(StrBuilder strBuilder, int i2, int i7) {
        if (strBuilder == null) {
            return false;
        }
        return substitute(strBuilder, i2, i7);
    }

    public String replace(String str) {
        if (str == null) {
            return null;
        }
        StrBuilder strBuilder = new StrBuilder(str);
        return !substitute(strBuilder, 0, str.length()) ? str : strBuilder.toString();
    }

    public StrSubstitutor(StrLookup<?> strLookup, String str, String str2, char c7, String str3) {
        this.preserveEscapes = false;
        setVariableResolver(strLookup);
        setVariablePrefix(str);
        setVariableSuffix(str2);
        setEscapeChar(c7);
        setValueDelimiter(str3);
    }

    public String replace(String str, int i2, int i7) {
        if (str == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(i7).append(str, i2, i7);
        if (!substitute(append, 0, i7)) {
            return str.substring(i2, i7 + i2);
        }
        return append.toString();
    }

    public String replace(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(cArr.length).append(cArr);
        substitute(append, 0, cArr.length);
        return append.toString();
    }

    public StrSubstitutor(StrLookup<?> strLookup, StrMatcher strMatcher, StrMatcher strMatcher2, char c7) {
        this(strLookup, strMatcher, strMatcher2, c7, DEFAULT_VALUE_DELIMITER);
    }

    public String replace(char[] cArr, int i2, int i7) {
        if (cArr == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(i7).append(cArr, i2, i7);
        substitute(append, 0, i7);
        return append.toString();
    }

    public StrSubstitutor(StrLookup<?> strLookup, StrMatcher strMatcher, StrMatcher strMatcher2, char c7, StrMatcher strMatcher3) {
        this.preserveEscapes = false;
        setVariableResolver(strLookup);
        setVariablePrefixMatcher(strMatcher);
        setVariableSuffixMatcher(strMatcher2);
        setEscapeChar(c7);
        setValueDelimiterMatcher(strMatcher3);
    }

    public String replace(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(stringBuffer.length()).append(stringBuffer);
        substitute(append, 0, append.length());
        return append.toString();
    }

    public String replace(StringBuffer stringBuffer, int i2, int i7) {
        if (stringBuffer == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(i7).append(stringBuffer, i2, i7);
        substitute(append, 0, i7);
        return append.toString();
    }

    public String replace(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return replace(charSequence, 0, charSequence.length());
    }

    public String replace(CharSequence charSequence, int i2, int i7) {
        if (charSequence == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(i7).append(charSequence, i2, i7);
        substitute(append, 0, i7);
        return append.toString();
    }

    public String replace(StrBuilder strBuilder) {
        if (strBuilder == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(strBuilder.length()).append(strBuilder);
        substitute(append, 0, append.length());
        return append.toString();
    }

    public String replace(StrBuilder strBuilder, int i2, int i7) {
        if (strBuilder == null) {
            return null;
        }
        StrBuilder append = new StrBuilder(i7).append(strBuilder, i2, i7);
        substitute(append, 0, i7);
        return append.toString();
    }

    public String replace(Object obj) {
        if (obj == null) {
            return null;
        }
        StrBuilder append = new StrBuilder().append(obj);
        substitute(append, 0, append.length());
        return append.toString();
    }
}
