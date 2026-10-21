.class public Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final request:Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

.field protected final route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->request:Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->request:Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 2
    .line 3
    return-object v0
.end method
