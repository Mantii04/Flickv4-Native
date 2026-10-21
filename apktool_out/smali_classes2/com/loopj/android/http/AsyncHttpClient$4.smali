.class Lcom/loopj/android/http/AsyncHttpClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;

.field final synthetic val$mayInterruptIfRunning:Z

.field final synthetic val$requestList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->access$100(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
