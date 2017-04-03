<div class='content'>
  <h1 class='page-title'><?=$this->title?></h1>
  <div class='byte'>
    <div class='bit-1'>
      <div class='bit-2 box tactics'>
    		<div class='box-content'>
          <div class='field'>
            <div class='field_line forwards'>
              <div class='left_block'></div>
              <div class='center_block'>
                <div class='field_player' player-id='' player-name='' position='fcl' >
                  <div class='playershirt forward'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='fc' >
                  <div class='playershirt forward'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='fcr' >
                  <div class='playershirt forward'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='right_block'></div>
            </div>
            <div class='field_line off_midfielders'>
              <div class='left_block'>
                <div class='field_player' player-id='' player-name='' position='oml' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='center_block'>
                <div class='field_player' player-id='' player-name='' position='omcl' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='omcr' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='right_block'>
                <div class='field_player' player-id='' player-name='' position='omr' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
            </div>
            <div class='field_line midfielders'>
              <div class='left_block'>
                <div class='field_player' player-id='' player-name='' position='ml' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='center_block'>
                <div class='field_player' player-id='' player-name='' position='mcl' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='mc' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='mcr' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='right_block'>
                <div class='field_player' player-id='' player-name='' position='mr' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
            </div>
            <div class='field_line def_midfielders'>
              <div class='left_block'>
                <div class='field_player' player-id='' player-name='' position='dml' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='center_block'>
                <div class='field_player' player-id='' player-name='' position='dmcl' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='dmcr' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='right_block'>
                <div class='field_player' player-id='' player-name='' position='dmr' >
                  <div class='playershirt midfielder'></div>
                  <p class='playername'></p>
                </div>
              </div>
            </div>
            <div class='field_line defenders'>
              <div class='left_block'>
                <div class='field_player' player-id='' player-name='' position='dl' >
                  <div class='playershirt defender'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='center_block'>
                <div class='field_player' player-id='' player-name='' position='dcl' >
                  <div class='playershirt defender'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='dc' >
                  <div class='playershirt defender'></div>
                  <p class='playername'></p>
                </div>
                <div class='field_player' player-id='' player-name='' position='dcr' >
                  <div class='playershirt defender'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='right_block'>
                <div class='field_player' player-id='' player-name='' position='dr' >
                  <div class='playershirt defender'></div>
                  <p class='playername'></p>
                </div>
              </div>
            </div>
            <div class='field_line goalkeeper'>
              <div class='left_block'></div>
              <div class='center_block'>
                <div class='field_player' player-id='' player-name='' position='gk' >
                  <div class='playershirt goalkeeper'></div>
                  <p class='playername'></p>
                </div>
              </div>
              <div class='right_block'></div>
            </div>
          </div>
    		</div>
    	</div>
      <div class='bit-2 box'>
        <div class='box-title'>
          Jogadores
        </div>
        <div class='box-content players-list'>
          <div class='form-field'>
            <label for="">Posições:</label>
            <input type="radio" name="pos" value="def" checked> <span class='position-D'>DEF</span>
            <input type="radio" name="pos" value="mid"> <span class='position-DM'>MEI</span>
            <input type="radio" name="pos" value="atk"> <span class='position-F'>ATA</span>
            <input type="radio" name="pos" value="gk"> <span class='position-GK'>GK</span>
          </div>
          <table class='table'>
             <thead>
               <tr>
                 <th data-sort='string'>Nome</th>
                 <th data-sort='string'><abbr title='Posição'>Pos</abbr></th>
                 <th data-sort='float'>SI</th>
                 <th><abbr title='Condição'>C</abbr></th>
               </tr>
             </thead>
             <tbody>
               <?
               foreach ($this->data['players']['line'] as $player) {
                 $n = explode(' ', $player->name);
                 ?>
                 <tr player-id='<?=$player->id_player?>' player-name='<?=$n[0]?>'>
                   <td><?=$player->name?></td>
                   <td class='positions'>
                     <? foreach ($player->position as $position) { ?>
                       <span class='position-<?=$position['position'];?>'><?=$position['position']." " . $position['side'];?></span>
                     <? } ?>
                   </td>
                   <td><?=$player->skill_index;?></td>
                   <td></td>
                 </tr>
               <?}?>
             </tbody>
            </table>
        </div>
      </div>
    </div>
  </div>
</div>