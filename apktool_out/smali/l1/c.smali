.class public final Ll1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/f;


# instance fields
.field public final synthetic a:Landroidx/profileinstaller/ProfileInstallReceiver;


# direct methods
.method public constructor <init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll1/c;->a:Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDiagnosticReceived(ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ll1/g;->b:Ll1/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ll1/f;->onDiagnosticReceived(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ll1/g;->b:Ll1/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ll1/f;->onResultReceived(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Ll1/c;->a:Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
