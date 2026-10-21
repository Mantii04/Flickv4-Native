.class Lcom/loopj/android/http/JsonHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

.field final synthetic val$headers:[Lcz/msebera/android/httpclient/Header;

.field final synthetic val$responseBytes:[B

.field final synthetic val$statusCode:I


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$responseBytes:[B

    .line 4
    .line 5
    iput p3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$responseBytes:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 10
    .line 11
    new-instance v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler$1;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 22
    .line 23
    new-instance v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
