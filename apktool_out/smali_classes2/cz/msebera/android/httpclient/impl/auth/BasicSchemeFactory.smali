.class public Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 1

    .line 1
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    .line 2
    .line 3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;->charset:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    .line 2
    .line 3
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
