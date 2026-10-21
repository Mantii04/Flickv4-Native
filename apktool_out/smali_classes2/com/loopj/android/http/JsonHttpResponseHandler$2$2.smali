.class Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 4
    .line 5
    iget v2, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
