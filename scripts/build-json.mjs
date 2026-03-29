import { readFileSync, writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { parse } from "yaml";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = join(__dirname, "..");

const yamlPath = join(root, "resend.yaml");
const jsonPath = join(root, "resend.json");

const yamlContent = readFileSync(yamlPath, "utf8");
const spec = parse(yamlContent);

writeFileSync(jsonPath, JSON.stringify(spec, null, 2) + "\n");

console.log(`✓ Generated ${jsonPath}`);
