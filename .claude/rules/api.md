---
globs: frontend/apis/**/*.ts
---

- `apis/client.ts`의 `client` 인스턴스를 import하여 사용한다. wretch()를 직접 호출하지 않는다.
- apis에 작성하는 파일에는 서버 응답을 그대로 표현하는 DTO 타입을 정의한다.  클라이언트에서 사용하는 형태의 타입은 `types/`에서 찾아보고, 없으면 `types/`에 작성한 후 해당 타입을 import한다. api 함수는 dto를 클라이언트 타입으로 변환하여 반환한다.
- 함수 이름은 HTTP 메서드를 prefix로 사용한다: `getCampaigns`, `createCampaign`, `updateCampaign`, `deleteCampaign`.
