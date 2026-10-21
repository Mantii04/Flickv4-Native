package cz.msebera.android.httpclient.message;

import cz.msebera.android.httpclient.HeaderElement;
import cz.msebera.android.httpclient.NameValuePair;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.LangUtils;

/* loaded from: classes2.dex */
public class BasicHeaderElement implements HeaderElement, Cloneable {
    private final String name;
    private final NameValuePair[] parameters;
    private final String value;

    public BasicHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        this.name = (String) Args.notNull(str, "Name");
        this.value = str2;
        if (nameValuePairArr != null) {
            this.parameters = nameValuePairArr;
        } else {
            this.parameters = new NameValuePair[0];
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HeaderElement) {
            BasicHeaderElement basicHeaderElement = (BasicHeaderElement) obj;
            if (this.name.equals(basicHeaderElement.name) && LangUtils.equals(this.value, basicHeaderElement.value) && LangUtils.equals((Object[]) this.parameters, (Object[]) basicHeaderElement.parameters)) {
                return true;
            }
        }
        return false;
    }

    @Override // cz.msebera.android.httpclient.HeaderElement
    public String getName() {
        return this.name;
    }

    @Override // cz.msebera.android.httpclient.HeaderElement
    public NameValuePair getParameter(int i2) {
        return this.parameters[i2];
    }

    @Override // cz.msebera.android.httpclient.HeaderElement
    public NameValuePair getParameterByName(String str) {
        Args.notNull(str, "Name");
        for (NameValuePair nameValuePair : this.parameters) {
            if (nameValuePair.getName().equalsIgnoreCase(str)) {
                return nameValuePair;
            }
        }
        return null;
    }

    @Override // cz.msebera.android.httpclient.HeaderElement
    public int getParameterCount() {
        return this.parameters.length;
    }

    @Override // cz.msebera.android.httpclient.HeaderElement
    public NameValuePair[] getParameters() {
        return (NameValuePair[]) this.parameters.clone();
    }

    @Override // cz.msebera.android.httpclient.HeaderElement
    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = LangUtils.hashCode(LangUtils.hashCode(17, this.name), this.value);
        for (NameValuePair nameValuePair : this.parameters) {
            hashCode = LangUtils.hashCode(hashCode, nameValuePair);
        }
        return hashCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        if (this.value != null) {
            sb.append("=");
            sb.append(this.value);
        }
        for (NameValuePair nameValuePair : this.parameters) {
            sb.append("; ");
            sb.append(nameValuePair);
        }
        return sb.toString();
    }

    public BasicHeaderElement(String str, String str2) {
        this(str, str2, null);
    }
}
