.class public Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;
    }
.end annotation


# instance fields
.field private final compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 1

    .line 4
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    .line 3
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 12

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 8
    .line 9
    if-nez v5, :cond_3

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 13
    .line 14
    if-nez v5, :cond_2

    .line 15
    .line 16
    sget-object v5, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$2;->$SwitchMap$cz$msebera$android$httpclient$impl$cookie$RFC6265CookieSpecProvider$CompatibilityLevel:[I

    .line 17
    .line 18
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    aget v5, v5, v6

    .line 25
    .line 26
    if-eq v5, v4, :cond_1

    .line 27
    .line 28
    if-eq v5, v3, :cond_0

    .line 29
    .line 30
    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;

    .line 31
    .line 32
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    .line 33
    .line 34
    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    .line 38
    .line 39
    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 43
    .line 44
    invoke-static {v7, v8}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;

    .line 49
    .line 50
    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    .line 54
    .line 55
    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;

    .line 59
    .line 60
    invoke-direct {v10}, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;-><init>()V

    .line 61
    .line 62
    .line 63
    new-array v2, v2, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 64
    .line 65
    aput-object v6, v2, v1

    .line 66
    .line 67
    aput-object v7, v2, v4

    .line 68
    .line 69
    aput-object v8, v2, v3

    .line 70
    .line 71
    aput-object v9, v2, v0

    .line 72
    .line 73
    aput-object v10, v2, p1

    .line 74
    .line 75
    invoke-direct {v5, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 76
    .line 77
    .line 78
    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;

    .line 84
    .line 85
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$1;

    .line 86
    .line 87
    invoke-direct {v6, p0}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;)V

    .line 88
    .line 89
    .line 90
    new-instance v7, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    .line 91
    .line 92
    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 96
    .line 97
    invoke-static {v7, v8}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    .line 102
    .line 103
    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    .line 107
    .line 108
    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    .line 112
    .line 113
    sget-object v11, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {v10, v11}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-array v2, v2, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 119
    .line 120
    aput-object v6, v2, v1

    .line 121
    .line 122
    aput-object v7, v2, v4

    .line 123
    .line 124
    aput-object v8, v2, v3

    .line 125
    .line 126
    aput-object v9, v2, v0

    .line 127
    .line 128
    aput-object v10, v2, p1

    .line 129
    .line 130
    invoke-direct {v5, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 131
    .line 132
    .line 133
    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;

    .line 137
    .line 138
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    .line 139
    .line 140
    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v7, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    .line 144
    .line 145
    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 149
    .line 150
    invoke-static {v7, v8}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    .line 155
    .line 156
    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    .line 160
    .line 161
    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v10, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    .line 165
    .line 166
    sget-object v11, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    .line 167
    .line 168
    invoke-direct {v10, v11}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-array v2, v2, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 172
    .line 173
    aput-object v6, v2, v1

    .line 174
    .line 175
    aput-object v7, v2, v4

    .line 176
    .line 177
    aput-object v8, v2, v3

    .line 178
    .line 179
    aput-object v9, v2, v0

    .line 180
    .line 181
    aput-object v10, v2, p1

    .line 182
    .line 183
    invoke-direct {v5, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 184
    .line 185
    .line 186
    iput-object v5, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 187
    .line 188
    :cond_2
    :goto_0
    monitor-exit p0

    .line 189
    goto :goto_2

    .line 190
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    throw p1

    .line 192
    :cond_3
    :goto_2
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 193
    .line 194
    return-object p1
.end method
