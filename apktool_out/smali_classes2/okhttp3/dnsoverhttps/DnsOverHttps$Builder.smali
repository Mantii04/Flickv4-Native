.class public final Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/dnsoverhttps/DnsOverHttps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bootstrapDnsHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lokhttp3/OkHttpClient;

.field private includeIPv6:Z

.field private post:Z

.field private resolvePrivateAddresses:Z

.field private resolvePublicAddresses:Z

.field private systemDns:Lokhttp3/Dns;

.field private url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6:Z

    .line 6
    .line 7
    sget-object v1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 8
    .line 9
    iput-object v1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->systemDns:Lokhttp3/Dns;

    .line 10
    .line 11
    iput-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePublicAddresses:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final bootstrapDnsHosts(Ljava/util/List;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)",
            "Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts:Ljava/util/List;

    return-object p0
.end method

.method public final varargs bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 1

    const-string v0, "bootstrapDnsHosts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lv5/n;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts(Ljava/util/List;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 8

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lokhttp3/dnsoverhttps/DnsOverHttps;->Companion:Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;

    .line 10
    .line 11
    invoke-static {v1, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;->access$buildBootstrapClient(Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;)Lokhttp3/Dns;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url:Lokhttp3/HttpUrl;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-boolean v4, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6:Z

    .line 28
    .line 29
    iget-boolean v5, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->post:Z

    .line 30
    .line 31
    iget-boolean v6, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePrivateAddresses:Z

    .line 32
    .line 33
    iget-boolean v7, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePublicAddresses:Z

    .line 34
    .line 35
    new-instance v1, Lokhttp3/dnsoverhttps/DnsOverHttps;

    .line 36
    .line 37
    invoke-direct/range {v1 .. v7}, Lokhttp3/dnsoverhttps/DnsOverHttps;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;ZZZZ)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "url not set"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 50
    .line 51
    const-string v1, "client not set"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 1

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getBootstrapDnsHosts$okhttp_dnsoverhttps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClient$okhttp_dnsoverhttps()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIncludeIPv6$okhttp_dnsoverhttps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPost$okhttp_dnsoverhttps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->post:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getResolvePrivateAddresses$okhttp_dnsoverhttps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePrivateAddresses:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getResolvePublicAddresses$okhttp_dnsoverhttps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePublicAddresses:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSystemDns$okhttp_dnsoverhttps()Lokhttp3/Dns;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->systemDns:Lokhttp3/Dns;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl$okhttp_dnsoverhttps()Lokhttp3/HttpUrl;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    return-object v0
.end method

.method public final includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final post(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->post:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final resolvePrivateAddresses(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePrivateAddresses:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final resolvePublicAddresses(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePublicAddresses:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setBootstrapDnsHosts$okhttp_dnsoverhttps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setClient$okhttp_dnsoverhttps(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    return-void
.end method

.method public final setIncludeIPv6$okhttp_dnsoverhttps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPost$okhttp_dnsoverhttps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->post:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setResolvePrivateAddresses$okhttp_dnsoverhttps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePrivateAddresses:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setResolvePublicAddresses$okhttp_dnsoverhttps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->resolvePublicAddresses:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSystemDns$okhttp_dnsoverhttps(Lokhttp3/Dns;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->systemDns:Lokhttp3/Dns;

    .line 7
    .line 8
    return-void
.end method

.method public final setUrl$okhttp_dnsoverhttps(Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    return-void
.end method

.method public final systemDns(Lokhttp3/Dns;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 1

    .line 1
    const-string v0, "systemDns"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->systemDns:Lokhttp3/Dns;

    .line 7
    .line 8
    return-object p0
.end method

.method public final url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url:Lokhttp3/HttpUrl;

    .line 7
    .line 8
    return-object p0
.end method
