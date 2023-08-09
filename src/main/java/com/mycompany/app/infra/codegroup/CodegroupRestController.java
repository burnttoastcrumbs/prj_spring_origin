package com.mycompany.app.infra.codegroup;

import com.mycompany.app.infra.code.Code;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/codegroup")


public class CodegroupRestController {
    @Autowired
    CodeGroupServiceImpl service;

    //	@GetMapping("")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
        List<CodeGroup> list = service.selectList(vo);
        return list;
    }


    @RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//	@GetMapping("/{seq}")
    public CodeGroup selectOne(@PathVariable String seq, CodeGroupVo vo) throws Exception {
        vo.setSeq(seq);
        CodeGroup item = service.selectOne(vo);
        return item;
    }


    @RequestMapping(value = "", method = RequestMethod.POST)
//	@PostMapping("")
    public String insert(@RequestBody CodeGroup dto) throws Exception {
        service.insert(dto);
        return dto.getSeq();
    }


    @RequestMapping(value = "/{seq}", method = RequestMethod.PUT)
//	@PatchMapping("/{seq}")
//	@PutMapping("/{seq}")
    public void update(@PathVariable String seq, @RequestBody CodeGroup dto) throws Exception {
        dto.setSeq(seq);
        service.update(dto);
    }
}