.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyConsumed:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$102(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Z)Z

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    const/16 v1, 0x9

    # invokes: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performKeyAction(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;I)V

    .line 221
    :cond_0
    return-void
.end method
