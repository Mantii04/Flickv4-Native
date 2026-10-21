.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation build Lcz/msebera/android/httpclient/annotation/Obsolete;
.end annotation


# instance fields
.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    .line 3
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 12

    .line 1
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    .line 13
    .line 14
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    .line 15
    .line 16
    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    .line 20
    .line 21
    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    .line 25
    .line 26
    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    .line 30
    .line 31
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    .line 36
    .line 37
    invoke-direct {v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    .line 41
    .line 42
    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    .line 46
    .line 47
    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v7, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    .line 51
    .line 52
    invoke-direct {v7}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v8, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    .line 56
    .line 57
    invoke-direct {v8}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v9, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    .line 61
    .line 62
    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v10, 0x9

    .line 66
    .line 67
    new-array v10, v10, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 68
    .line 69
    const/4 v11, 0x0

    .line 70
    aput-object v1, v10, v11

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    aput-object v2, v10, v1

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    aput-object v3, v10, v1

    .line 77
    .line 78
    const/4 v1, 0x3

    .line 79
    aput-object v4, v10, v1

    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    aput-object v5, v10, v1

    .line 83
    .line 84
    const/4 v1, 0x5

    .line 85
    aput-object v6, v10, v1

    .line 86
    .line 87
    const/4 v1, 0x6

    .line 88
    aput-object v7, v10, v1

    .line 89
    .line 90
    const/4 v1, 0x7

    .line 91
    aput-object v8, v10, v1

    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    aput-object v9, v10, v1

    .line 96
    .line 97
    invoke-direct {p1, v0, v10}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    .line 106
    goto :goto_2

    .line 107
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p1

    .line 109
    :cond_1
    :goto_2
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 110
    .line 111
    return-object p1
.end method
