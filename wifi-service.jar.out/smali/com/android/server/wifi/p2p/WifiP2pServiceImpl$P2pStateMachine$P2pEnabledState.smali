.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 973
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 975
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 976
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 977
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 978
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 1225
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1228
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 982
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 983
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 1216
    const/16 v20, 0x0

    .line 1218
    :goto_0
    return v20

    .line 985
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const-string v21, "Unexpected loss of p2p socket connection"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1218
    :cond_1
    :goto_1
    :sswitch_1
    const/16 v20, 0x1

    goto :goto_0

    .line 992
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 995
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 997
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiMonitor;->stopMonitoring()V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1002
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1003
    .local v6, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1004
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "set device name "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1005
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22035

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1007
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22034

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1014
    .end local v6    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 1015
    .local v6, "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2203d

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1018
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2203c

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1024
    .end local v6    # "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    .line 1025
    .local v4, "blocked":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v20

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 1027
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 1031
    :cond_7
    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    const/16 v21, 0x78

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    .line 1035
    :cond_8
    if-eqz v4, :cond_1

    .line 1037
    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/util/StateMachine;

    .line 1038
    .local v12, "m":Lcom/android/internal/util/StateMachine;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1039
    .end local v12    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v9

    .line 1040
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unable to send BLOCK_DISCOVERY response: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1024
    .end local v4    # "blocked":Z
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1045
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22002

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1051
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    const/16 v21, 0x78

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22003

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 1056
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22002

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1061
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 1064
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22006

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1067
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22005

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1072
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2202f

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1077
    :cond_d
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " discover services"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1078
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2202f

    const/16 v22, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1083
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    const/16 v21, 0x78

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22030

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1086
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2202f

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1091
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1092
    .local v8, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_1

    .line 1097
    .end local v8    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1099
    .restart local v8    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v20

    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    .line 1100
    if-eqz v8, :cond_1

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_1

    .line 1105
    .end local v8    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_c
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " add service"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1106
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1107
    .local v19, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2201e

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1110
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2201d

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1114
    .end local v19    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_d
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " remove service"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1115
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1116
    .restart local v19    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22021

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1120
    .end local v19    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_e
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " clear service"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1121
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22024

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1125
    :sswitch_f
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " add service request"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1126
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22026

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1130
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22027

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1133
    :sswitch_10
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " remove service request"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1134
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2202a

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1138
    :sswitch_11
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " clear service request"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1139
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2202d

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1143
    :sswitch_12
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " receive service response"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1144
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 1146
    .local v17, "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 1147
    .local v16, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    .line 1149
    .local v7, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_3

    .line 1154
    .end local v7    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .end local v17    # "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :sswitch_13
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " delete persistent group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1155
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22038

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1159
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/WifiNative;->setMiracastMode(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMiracastModeChanged(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$5000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V

    goto/16 :goto_1

    .line 1163
    :sswitch_15
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " start listen mode"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1164
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1f4

    const/16 v23, 0x1f4

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22043

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1168
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22042

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1172
    :sswitch_16
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " stop listen mode"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1173
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/wifi/WifiNative;->p2pExtListen(ZII)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22046

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    .line 1178
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    goto/16 :goto_1

    .line 1176
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22045

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_4

    .line 1181
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Bundle;

    .line 1182
    .local v14, "p2pChannels":Landroid/os/Bundle;
    const-string v20, "lc"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1183
    .local v11, "lc":I
    const-string v20, "oc"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1184
    .local v13, "oc":I
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " set listen and operating channel"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1185
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v13}, Lcom/android/server/wifi/WifiNative;->p2pSetChannel(II)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22049

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1188
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x22048

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1192
    .end local v11    # "lc":I
    .end local v13    # "oc":I
    .end local v14    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1193
    .local v5, "countryCode":Ljava/lang/String;
    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1196
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1202
    .end local v5    # "countryCode":Ljava/lang/String;
    :sswitch_19
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1203
    .local v15, "requestBundle":Landroid/os/Bundle;
    const-string v20, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverRequest()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2204d

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1209
    .end local v15    # "requestBundle":Landroid/os/Bundle;
    :sswitch_1a
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 1210
    .local v18, "selectBundle":Landroid/os/Bundle;
    const-string v20, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverSelect()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v20, v0

    const v21, 0x2204d

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, v18

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_2
        0x22001 -> :sswitch_6
        0x22004 -> :sswitch_8
        0x2201c -> :sswitch_c
        0x2201f -> :sswitch_d
        0x22022 -> :sswitch_e
        0x22025 -> :sswitch_f
        0x22028 -> :sswitch_10
        0x2202b -> :sswitch_11
        0x2202e -> :sswitch_9
        0x22033 -> :sswitch_3
        0x22036 -> :sswitch_13
        0x2203b -> :sswitch_4
        0x22041 -> :sswitch_15
        0x22044 -> :sswitch_16
        0x22047 -> :sswitch_17
        0x2204b -> :sswitch_19
        0x2204c -> :sswitch_1a
        0x2300e -> :sswitch_14
        0x2300f -> :sswitch_5
        0x23010 -> :sswitch_18
        0x24002 -> :sswitch_0
        0x24015 -> :sswitch_a
        0x24016 -> :sswitch_b
        0x24025 -> :sswitch_7
        0x24026 -> :sswitch_12
    .end sparse-switch
.end method
