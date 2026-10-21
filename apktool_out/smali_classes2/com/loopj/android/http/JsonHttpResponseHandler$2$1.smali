.class Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;
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

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->access$000(Lcom/loopj/android/http/JsonHttpResponseHandler;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 19
    .line 20
    iget v3, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    .line 21
    .line 22
    iget-object v4, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    .line 31
    .line 32
    instance-of v2, v0, Lorg/json/JSONObject;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 39
    .line 40
    iget v3, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    .line 41
    .line 42
    iget-object v4, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    .line 45
    .line 46
    check-cast v0, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    instance-of v2, v0, Lorg/json/JSONArray;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 57
    .line 58
    iget-object v2, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 59
    .line 60
    iget v3, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    .line 61
    .line 62
    iget-object v4, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    .line 65
    .line 66
    check-cast v0, Lorg/json/JSONArray;

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 77
    .line 78
    iget-object v2, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 79
    .line 80
    iget v3, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    .line 81
    .line 82
    iget-object v4, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 83
    .line 84
    check-cast v0, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    .line 87
    .line 88
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .line 93
    .line 94
    iget-object v2, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 95
    .line 96
    iget v3, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    .line 97
    .line 98
    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    .line 99
    .line 100
    new-instance v4, Lorg/json/JSONException;

    .line 101
    .line 102
    iget-object v5, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v6, "Unexpected response type "

    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
