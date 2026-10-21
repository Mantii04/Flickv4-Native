package R2;

/* loaded from: classes.dex */
public final class k extends AbstractC0257b {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f3063a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3064b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3065c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3066d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3067e;

    /* renamed from: f, reason: collision with root package name */
    public final String f3068f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3069g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3070h;

    /* renamed from: i, reason: collision with root package name */
    public final String f3071i;

    /* renamed from: j, reason: collision with root package name */
    public final String f3072j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3073k;

    /* renamed from: l, reason: collision with root package name */
    public final String f3074l;

    public k(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f3063a = num;
        this.f3064b = str;
        this.f3065c = str2;
        this.f3066d = str3;
        this.f3067e = str4;
        this.f3068f = str5;
        this.f3069g = str6;
        this.f3070h = str7;
        this.f3071i = str8;
        this.f3072j = str9;
        this.f3073k = str10;
        this.f3074l = str11;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0257b) {
            AbstractC0257b abstractC0257b = (AbstractC0257b) obj;
            Integer num = this.f3063a;
            if (num != null ? num.equals(abstractC0257b.getSdkVersion()) : abstractC0257b.getSdkVersion() == null) {
                String str = this.f3064b;
                if (str != null ? str.equals(abstractC0257b.getModel()) : abstractC0257b.getModel() == null) {
                    String str2 = this.f3065c;
                    if (str2 != null ? str2.equals(abstractC0257b.getHardware()) : abstractC0257b.getHardware() == null) {
                        String str3 = this.f3066d;
                        if (str3 != null ? str3.equals(abstractC0257b.getDevice()) : abstractC0257b.getDevice() == null) {
                            String str4 = this.f3067e;
                            if (str4 != null ? str4.equals(abstractC0257b.getProduct()) : abstractC0257b.getProduct() == null) {
                                String str5 = this.f3068f;
                                if (str5 != null ? str5.equals(abstractC0257b.getOsBuild()) : abstractC0257b.getOsBuild() == null) {
                                    String str6 = this.f3069g;
                                    if (str6 != null ? str6.equals(abstractC0257b.getManufacturer()) : abstractC0257b.getManufacturer() == null) {
                                        String str7 = this.f3070h;
                                        if (str7 != null ? str7.equals(abstractC0257b.getFingerprint()) : abstractC0257b.getFingerprint() == null) {
                                            String str8 = this.f3071i;
                                            if (str8 != null ? str8.equals(abstractC0257b.getLocale()) : abstractC0257b.getLocale() == null) {
                                                String str9 = this.f3072j;
                                                if (str9 != null ? str9.equals(abstractC0257b.getCountry()) : abstractC0257b.getCountry() == null) {
                                                    String str10 = this.f3073k;
                                                    if (str10 != null ? str10.equals(abstractC0257b.getMccMnc()) : abstractC0257b.getMccMnc() == null) {
                                                        String str11 = this.f3074l;
                                                        if (str11 != null ? str11.equals(abstractC0257b.getApplicationBuild()) : abstractC0257b.getApplicationBuild() == null) {
                                                            return true;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // R2.AbstractC0257b
    public String getApplicationBuild() {
        return this.f3074l;
    }

    @Override // R2.AbstractC0257b
    public String getCountry() {
        return this.f3072j;
    }

    @Override // R2.AbstractC0257b
    public String getDevice() {
        return this.f3066d;
    }

    @Override // R2.AbstractC0257b
    public String getFingerprint() {
        return this.f3070h;
    }

    @Override // R2.AbstractC0257b
    public String getHardware() {
        return this.f3065c;
    }

    @Override // R2.AbstractC0257b
    public String getLocale() {
        return this.f3071i;
    }

    @Override // R2.AbstractC0257b
    public String getManufacturer() {
        return this.f3069g;
    }

    @Override // R2.AbstractC0257b
    public String getMccMnc() {
        return this.f3073k;
    }

    @Override // R2.AbstractC0257b
    public String getModel() {
        return this.f3064b;
    }

    @Override // R2.AbstractC0257b
    public String getOsBuild() {
        return this.f3068f;
    }

    @Override // R2.AbstractC0257b
    public String getProduct() {
        return this.f3067e;
    }

    @Override // R2.AbstractC0257b
    public Integer getSdkVersion() {
        return this.f3063a;
    }

    public int hashCode() {
        Integer num = this.f3063a;
        int hashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f3064b;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f3065c;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f3066d;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f3067e;
        int hashCode5 = (hashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f3068f;
        int hashCode6 = (hashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f3069g;
        int hashCode7 = (hashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f3070h;
        int hashCode8 = (hashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f3071i;
        int hashCode9 = (hashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f3072j;
        int hashCode10 = (hashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f3073k;
        int hashCode11 = (hashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f3074l;
        return (str11 != null ? str11.hashCode() : 0) ^ hashCode11;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f3063a);
        sb.append(", model=");
        sb.append(this.f3064b);
        sb.append(", hardware=");
        sb.append(this.f3065c);
        sb.append(", device=");
        sb.append(this.f3066d);
        sb.append(", product=");
        sb.append(this.f3067e);
        sb.append(", osBuild=");
        sb.append(this.f3068f);
        sb.append(", manufacturer=");
        sb.append(this.f3069g);
        sb.append(", fingerprint=");
        sb.append(this.f3070h);
        sb.append(", locale=");
        sb.append(this.f3071i);
        sb.append(", country=");
        sb.append(this.f3072j);
        sb.append(", mccMnc=");
        sb.append(this.f3073k);
        sb.append(", applicationBuild=");
        return A.i.o(sb, this.f3074l, "}");
    }
}
