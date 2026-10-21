.class public final Lcom/google/firebase/sessions/SessionLifecycleService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;,
        Lcom/google/firebase/sessions/SessionLifecycleService$Companion;
    }
.end annotation


# static fields
.field public static final BACKGROUNDED:I = 0x2

.field private static final CLIENT_BOUND:I = 0x4

.field public static final CLIENT_CALLBACK_MESSENGER:Ljava/lang/String; = "ClientCallbackMessenger"

.field public static final Companion:Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

.field public static final FOREGROUNDED:I = 0x1

.field public static final SESSION_UPDATED:I = 0x3

.field public static final SESSION_UPDATE_EXTRA:Ljava/lang/String; = "SessionUpdateExtra"

.field public static final TAG:Ljava/lang/String; = "SessionLifecycleService"


# instance fields
.field private final handlerThread:Landroid/os/HandlerThread;

.field private messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

.field private messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionLifecycleService;->Companion:Lcom/google/firebase/sessions/SessionLifecycleService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v1, "FirebaseSessions_HandlerThread"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    return-void
.end method

.method private final getClientCallback(Landroid/content/Intent;)Landroid/os/Messenger;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, LN/g;->i(Landroid/content/Intent;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/os/Messenger;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string v0, "ClientCallbackMessenger"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/os/Messenger;

    .line 21
    .line 22
    return-object p1
.end method


# virtual methods
.method public final getHandlerThread$com_google_firebase_firebase_sessions()Landroid/os/HandlerThread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 1
    const-string v0, "SessionLifecycleService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "Service bound with null intent. Ignoring."

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Service bound to new client on process "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService;->getClientCallback(Landroid/content/Intent;)Landroid/os/Messenger;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v1, v0, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messenger:Landroid/os/Messenger;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_2
    return-object v1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "handlerThread.looper"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    .line 26
    .line 27
    new-instance v0, Landroid/os/Messenger;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messageHandler:Lcom/google/firebase/sessions/SessionLifecycleService$MessageHandler;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->messenger:Landroid/os/Messenger;

    .line 35
    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService;->handlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
