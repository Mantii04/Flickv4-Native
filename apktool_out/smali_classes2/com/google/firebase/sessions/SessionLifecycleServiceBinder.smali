.class public interface abstract Lcom/google/firebase/sessions/SessionLifecycleServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionLifecycleServiceBinder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/SessionLifecycleServiceBinder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinder$Companion;->$$INSTANCE:Lcom/google/firebase/sessions/SessionLifecycleServiceBinder$Companion;

    sput-object v0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinder;->Companion:Lcom/google/firebase/sessions/SessionLifecycleServiceBinder$Companion;

    return-void
.end method


# virtual methods
.method public abstract bindToService(Landroid/os/Messenger;Landroid/content/ServiceConnection;)V
.end method
