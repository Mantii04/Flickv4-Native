.class Lcz/msebera/android/httpclient/impl/client/cache/Variant;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field private final entry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

.field private final variantKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->variantKey:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->cacheKey:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->entry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEntry()Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->entry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVariantKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->variantKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
