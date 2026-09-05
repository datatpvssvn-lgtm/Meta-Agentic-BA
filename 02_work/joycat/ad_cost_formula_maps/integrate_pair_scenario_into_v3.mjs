import fs from "node:fs/promises";

const targetPath = "D:/BA_library/Ad_Cost_GMV_all_platform v3.mm";
let xml = await fs.readFile(targetPath, "utf8");

const pairAnchor = '<node TEXT="= AS TOF + AS MOF + AS BOF" ID="25e9836f1e04c2a492526e69d24857b3" STYLE="fork"/>';

if (!xml.includes('ID="PAIR_INTEGRATED_0001"')) {
  const pairNodes = `${pairAnchor}
        <node TEXT="CẶP 2 — TỔNG QUAN" ID="PAIR_INTEGRATED_0001" STYLE="fork" FOLDED="true">
          <node TEXT="Nền tảng × Sản phẩm: AS Facebook (SP1) + AS Facebook (SP2) + ... + AS WhatsApp (SPn)" ID="PAIR_INTEGRATED_0002" STYLE="fork"/>
          <node TEXT="Nền tảng × Phễu: AS Facebook (TOFU) + AS Facebook (MOFU) + AS Facebook (BOFU) + ..." ID="PAIR_INTEGRATED_0003" STYLE="fork"/>
          <node TEXT="Nền tảng × Campaign objective: AS Facebook (Objective 1) + ... + AS WhatsApp (Objective n)" ID="PAIR_INTEGRATED_0004" STYLE="fork"/>
          <node TEXT="Phễu × Sản phẩm: AS TOFU (SP1) + AS TOFU (SP2) + ... + AS BOFU (SPn)" ID="PAIR_INTEGRATED_0005" STYLE="fork"/>
          <node TEXT="Sản phẩm × Campaign objective: AS SP1 (Objective 1) + ... + AS SPn (Objective n)" ID="PAIR_INTEGRATED_0006" STYLE="fork"/>
          <node TEXT="Phễu × Campaign objective: AS TOFU (Objective 1) + ... + AS BOFU (Objective n)" ID="PAIR_INTEGRATED_0007" STYLE="fork"/>
        </node>
        <node TEXT="CẶP 3 — TỔNG QUAN" ID="PAIR_INTEGRATED_0008" STYLE="fork" FOLDED="true">
          <node TEXT="Phễu × Nền tảng × Sản phẩm: AS Facebook (TOFU, SP1) + ... + AS WhatsApp (BOFU, SPn)" ID="PAIR_INTEGRATED_0009" STYLE="fork"/>
          <node TEXT="Nền tảng × Sản phẩm × Campaign objective: AS Facebook (SP1, Objective 1) + ... + AS WhatsApp (SPn, Objective n)" ID="PAIR_INTEGRATED_0010" STYLE="fork"/>
          <node TEXT="Phễu × Nền tảng × Campaign objective: AS Facebook (TOFU, Objective 1) + ... + AS WhatsApp (BOFU, Objective n)" ID="PAIR_INTEGRATED_0011" STYLE="fork"/>
          <node TEXT="Phễu × Sản phẩm × Campaign objective: AS TOFU (SP1, Objective 1) + ... + AS BOFU (SPn, Objective n)" ID="PAIR_INTEGRATED_0012" STYLE="fork"/>
        </node>
        <node TEXT="Một chiều, cặp 2 và cặp 3 là các cách đọc cùng Tổng Ads Cost; không cộng chúng với nhau" ID="PAIR_INTEGRATED_0013" STYLE="fork"/>`;

  if (!xml.includes(pairAnchor)) throw new Error("Không tìm thấy node Ads cost để chèn cặp 2–3");
  xml = xml.replace(pairAnchor, pairNodes);
}

const empty5 = '<node TEXT="" ID="a38971b96ac1914eed1528b0fc39d670" STYLE="fork"/>';
const detail5 = `<node TEXT="Ý nghĩa và công thức" ID="a38971b96ac1914eed1528b0fc39d670" STYLE="fork">
            <node TEXT="Ads Cost tối đa = GMV toàn nền tảng × 5%" ID="SCENARIO_INTEGRATED_0001" STYLE="fork"/>
            <node TEXT="GMV cần đạt = Tổng Ads Cost / 5%" ID="SCENARIO_INTEGRATED_0002" STYLE="fork"/>
            <node TEXT="1 đồng Ads Cost đi cùng 20 đồng GMV toàn nền tảng" ID="SCENARIO_INTEGRATED_0003" STYLE="fork"/>
          </node>`;
if (xml.includes(empty5)) xml = xml.replace(empty5, detail5);

const empty10 = '<node TEXT="" ID="3d91c1c7fd55e56c3cf6d441a762e4ca" STYLE="fork"/>';
const detail10 = `<node TEXT="Ý nghĩa và công thức" ID="3d91c1c7fd55e56c3cf6d441a762e4ca" STYLE="fork">
            <node TEXT="Ads Cost tối đa = GMV toàn nền tảng × 10%" ID="SCENARIO_INTEGRATED_0004" STYLE="fork"/>
            <node TEXT="GMV cần đạt = Tổng Ads Cost / 10%" ID="SCENARIO_INTEGRATED_0005" STYLE="fork"/>
            <node TEXT="1 đồng Ads Cost đi cùng 10 đồng GMV toàn nền tảng" ID="SCENARIO_INTEGRATED_0006" STYLE="fork"/>
          </node>`;
if (xml.includes(empty10)) xml = xml.replace(empty10, detail10);

const blankTop = '<node TEXT="" ID="b620754f155b51d7a7ed923d71f4b305" STYLE="bubble" POSITION="left"/>';
const boundary = `<node TEXT="Ranh giới của giả định" ID="b620754f155b51d7a7ed923d71f4b305" STYLE="bubble" POSITION="left">
      <node TEXT="Business ROAS dùng GMV toàn nền tảng; không phải Purchase ROAS do Meta báo cáo" ID="SCENARIO_INTEGRATED_0007" STYLE="fork"/>
      <node TEXT="Tỷ lệ 5–10% hiện chưa được raw tái tính vì thiếu GMV business cùng kỳ" ID="SCENARIO_INTEGRATED_0008" STYLE="fork"/>
      <node TEXT="Nên nói Ads Cost đi cùng GMV; chưa khẳng định toàn bộ GMV do Ads tạo ra" ID="SCENARIO_INTEGRATED_0009" STYLE="fork"/>
    </node>`;
if (xml.includes(blankTop)) xml = xml.replace(blankTop, boundary);

await fs.writeFile(targetPath, xml, "utf8");
process.stdout.write(JSON.stringify({ targetPath }, null, 2));
